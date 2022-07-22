view: most_viewed_product_ids {
  derived_table: {
    sql:
    WITH
  total_product_search_results AS (
    SELECT d.product.id as sku, COUNT(d) as total
    FROM `retail-shared-demos.retail.tbl_events`, UNNEST(product_details) as d
    WHERE event_type = 'detail-page-view' AND ARRAY_LENGTH(product_details) > 0
    GROUP BY d.product.id
    ORDER BY total desc
  )
  SELECT FORMAT("%'.2i", SUM(total)) AS total_items_returned_over_period from total_product_search_results;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  measure: count {
    hidden: no
    type: count
    drill_fields: [detail*]
  }

  measure: view_count {
    type: sum
    sql: ${TABLE}.total ;;
  }

  set: detail {
    fields: [sku,title,view_count]
  }
}
