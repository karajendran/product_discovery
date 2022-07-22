view: most_searched_product_new {
  derived_table: {
    sql: WITH prod_map AS (SELECT
          tbl_products.id  AS id,
          tbl_products.title  AS title,
          tbl_products__categories  AS tbl_products__categories
      FROM `retail.tbl_products`
           AS tbl_products
      LEFT JOIN UNNEST(tbl_products.categories) as tbl_products__categories)

      SELECT d.product.id as sku, t2.title as title, t2.tbl_products__categories as categories, COUNT(d) as total
      FROM `retail-shared-demos.retail.tbl_events`, UNNEST(product_details) as d
      JOIN prod_map t2 ON d.product.id = t2.id
      WHERE event_type = 'search' AND ARRAY_LENGTH(product_details) > 0
      GROUP BY 1,2,3
      ORDER BY 4 DESC
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

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: categories {
    type: string
    sql: ${TABLE}.categories ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  set: detail {
    fields: [sku, title, categories, total]
  }
}
