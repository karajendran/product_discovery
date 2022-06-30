
view: product_name_category_mapping {
  derived_table: {
    sql:
    With ViewTable as
    (Select prd_id, day, visitor
    FROM `retail.mv_detail_page_view`),
    ProdTable as
    (Select id, description
    FROM `retail.tbl_products`)

      SELECT prd_id, description, COUNT(*) as view_count
      FROM ProdTable
      JOIN ViewTable on prd_id = id
      GROUP BY 1,2
      ORDER BY 3 DESC;;
  }
  dimension: product_id {
    type: string
    sql: ${TABLE}.prd_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.description ;;
  }
  measure: count {
    hidden: no
    type: count
    drill_fields: [view_count]
  }

  dimension: view_count {
    type: number
    sql: ${TABLE}.view_count ;;
  }

  set: detail {
    fields: [product_id, product_name]
  }
}
