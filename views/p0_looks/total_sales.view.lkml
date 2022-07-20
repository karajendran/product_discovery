view: total_sales {
  derived_table: {
    sql: SELECT
          round(sum(mv_sales.tx_total),2) AS total_sales
      FROM `retail.mv_sales`
           AS mv_sales
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }

  set: detail {
    fields: [total_sales]
  }
}
