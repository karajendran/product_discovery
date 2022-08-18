view: best_performing_product {
  derived_table: {
    sql: WITH
        flat_product_search AS (
          select event_time, details.product.id as sku, details.product.price as price, SUM(details.quantity) as sold
          from `retail-shared-demos.retail.tbl_events`, UNNEST(product_details) as details
          where event_type = 'purchase-complete'
          GROUP BY event_time, details.product.id, details.product.price
        )
        select event_time, sku, price, sold, TRUNC((price * sold),2) as sales from flat_product_search ORDER BY sales desc, sold desc
       ;;
  }

  dimension_group: event_time {
    type: time
    sql: ${TABLE}.event_time ;;
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

  dimension: sold_quantity {
    type: number
    sql: ${TABLE}.sold ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.sales ;;
    value_format: "$#,##0.00"
  }

  set: detail {
    fields: [sku, price, sold_quantity, total_sales]
  }
}
