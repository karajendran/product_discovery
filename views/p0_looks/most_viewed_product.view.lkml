#products that are most showed in  search results

view: most_viewed_product {
  derived_table: {
    sql:
    SELECT event_time as event_time, d.product.id as sku, t2.title as title, COUNT(d) as total
    FROM `retail-shared-demos.retail.tbl_events`, UNNEST(product_details) as d
    JOIN `retail-shared-demos.retail.tbl_products` t2 ON d.product.id = t2.id
    WHERE event_type = 'detail-page-view' AND ARRAY_LENGTH(product_details) > 0
    GROUP BY  event_time, d.product.id, t2.title
    ORDER BY total desc;;
  }

  dimension_group: event {
    type: time
    sql: ${TABLE}.event_time ;;
  }

  dimension: sku {
    primary_key: yes
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
    fields: [sku,title]
  }
}
