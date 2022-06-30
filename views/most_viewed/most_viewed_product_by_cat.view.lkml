view: most_viewed_product_by_cat {
  derived_table: {
    sql:

      With ViewTable as
      (Select events.object__product.sku as sku, events.start_time as view_date
      FROM `retail.events` AS events
      Where events.action_type='ViewItem')
      Select products__category,COUNT(sku) as View_count
      FROM `retail.products` AS products
      LEFT JOIN UNNEST(products.category) as products__category
      Where sku = products.SKU
      GROUP BY products__category
      ORDER BY
        2 DESC,
        1
      ;;
  }

  dimension: products__category {
    type: string
    sql: ${TABLE}.products__category ;;
  }

  dimension: view_count {
    type: number
    sql: ${TABLE}.View_count ;;
  }
}
