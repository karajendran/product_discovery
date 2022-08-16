connection: "looker-retailshared"

# include the dashboard
include: "/dashboards/*.dashboard.lookml"

# include all the views
include: "/views/**/*.view"

datagroup: product_discovery_v1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: product_discovery_v1_default_datagroup


explore: tbl_events {
  join: tbl_events__product_details {
    view_label: "Tbl Events: Product Details"
    sql: LEFT JOIN UNNEST(${tbl_events.product_details}) as tbl_events__product_details ;;
    relationship: one_to_many
  }
}

explore: events {
  join: events__experiment {
    view_label: "Events: Experiment"
    sql: LEFT JOIN UNNEST(${events.experiment}) as events__experiment ;;
    relationship: one_to_many
  }

  join: events__page_categories {
    view_label: "Events: Page Categories"
    sql: LEFT JOIN UNNEST(${events.page_categories}) as events__page_categories ;;
    relationship: one_to_many
  }

  join: events__result__item_list__item_list_element {
    view_label: "Events: Result Item List Item List Element"
    sql: LEFT JOIN UNNEST(${events.result__item_list__item_list_element}) as events__result__item_list__item_list_element ;;
    relationship: one_to_many
  }

  join: events__object__item_list__item_list_element {
    view_label: "Events: Object Item List Item List Element"
    sql: LEFT JOIN UNNEST(${events.object__item_list__item_list_element}) as events__object__item_list__item_list_element ;;
    relationship: one_to_many
  }

  join: events__result__order__accepted_offer {
    view_label: "Events: Result Order Accepted Offer"
    sql: LEFT JOIN UNNEST(${events.result__order__accepted_offer}) as events__result__order__accepted_offer ;;
    relationship: one_to_many
  }
}

explore: mv_search {
  join: mv_search__results {
    view_label: "Mv Search: Results"
    sql: LEFT JOIN UNNEST(${mv_search.results}) as mv_search__results ;;
    relationship: one_to_many
  }
}

explore: mv_events_flat {}

# explore: events {
#   join: mv_sales {}
#   join: mv_search {}
#   join: mv_add_to_cart {}
# }

# view: sessions {SELECT DATE(DAY) as DAY, SESSION_ID, ....}

# explore: sessions {
#   join: mv_sales {}
#   join: mv_search {}
#   join: mv_add_to_cart {}
# }



explore: mv_sales {
  join: mv_search {
    type: left_outer
    relationship: one_to_one
    sql_on: ${mv_sales.day_date} = ${mv_search.day_date} and ${mv_sales.session}= ${mv_search.session} ;;
  }
}

explore: mv_sessions_stats {}

explore: mv_add_to_cart {}

explore: mv_add_to_cart_v2 {
  join: mv_add_to_cart_v2__categories {
    view_label: "Mv Add To Cart V2: Categories"
    sql: LEFT JOIN UNNEST(${mv_add_to_cart_v2.categories}) as mv_add_to_cart_v2__categories ;;
    relationship: one_to_many
  }
}

explore: mv_detail_page_view {}

explore: tbl_products {
  label: "Products"
  group_label: "Products"
  view_label: "Products"

  join: best_performing_product {
    type: inner
    relationship: one_to_many
    sql_on: ${tbl_products.id} = ${best_performing_product.sku} ;;
  }

  join: mv_detail_page_view {
    type: inner
    relationship: one_to_many
    sql_on: ${tbl_products.id} = ${mv_detail_page_view.prd_id} ;;
  }

  join: most_viewed_product {
    type: left_outer
    relationship: one_to_many
    sql_on: ${tbl_products.id} = ${most_viewed_product.sku} ;;
  }

  join: most_searched_product {
    type: left_outer
    relationship: one_to_many
    sql_on: ${tbl_products.id} = ${most_searched_product.sku} ;;
  }

  join: tbl_products__sizes {
    view_label: "Tbl Products: Sizes"
    sql: LEFT JOIN UNNEST(${tbl_products.sizes}) as tbl_products__sizes ;;
    relationship: one_to_many
  }

  join: tbl_products__images {
    view_label: "Tbl Products: Images"
    sql: LEFT JOIN UNNEST(${tbl_products.images}) as tbl_products__images ;;
    relationship: one_to_many
  }

  join: tbl_products__brands {
    view_label: "Products"
    sql: LEFT JOIN UNNEST(${tbl_products.brands}) as tbl_products__brands ;;
    relationship: one_to_many
  }

  join: tbl_products__colors {
    view_label: "Tbl Products: Colors"
    sql: LEFT JOIN UNNEST(${tbl_products.colors}) as tbl_products__colors ;;
    relationship: one_to_many
  }

  join: tbl_products__categories {
    view_label: "Tbl Products: Categories"
    sql: LEFT JOIN UNNEST(${tbl_products.categories}) as tbl_products__categories ;;
    relationship: one_to_many
  }

  join: tbl_products__conditions {
    view_label: "Tbl Products: Conditions"
    sql: LEFT JOIN UNNEST(${tbl_products.conditions}) as tbl_products__conditions ;;
    relationship: one_to_many
  }
}

#P0: 3 - Most Searched Products
explore: most_searched_product {}

explore: most_searched_product_category {}

explore: most_searched_product_ids {}


#P0: 4 - Most Viewed Products
explore: most_viewed_product{}

explore: most_viewed_product_category {}

explore: most_viewed_product_ids {}


# explore: prod_map {}


#P0: 6 - Best & Worst Performing Products
explore: best_performing_product{}

#P0: 8 - Abandonment rate
explore: abandonment_rate {}

explore: test{}

#sales forecast
explore: sales_forecast {}

explore: search_to_detail_page_view {} #Click-through rate
explore: search_to_add_to_cart {} #Add to cart rate
explore: search_to_sales {} #Conversion rate
