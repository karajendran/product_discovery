view: best_performing_product {
  derived_table: {
    sql: WITH
        flat_product_search AS (
          select details.product.id as sku, details.product.price as price, SUM(details.quantity) as sold
          from `retail-shared-demos.retail.tbl_events`, UNNEST(product_details) as details
          where event_type = 'purchase-complete'
          GROUP BY details.product.id, details.product.price
        )
        select sku, price, sold, TRUNC((price * sold),2) as sales from flat_product_search ORDER BY sales desc, sold desc
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: sold {
    type: number
    sql: ${TABLE}.sold ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }

  set: detail {
    fields: [sku, price, sold, sales]
  }
}
