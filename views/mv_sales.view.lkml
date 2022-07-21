view: mv_sales {
  sql_table_name: `retail.mv_sales`
    ;;

  measure: basket_size {
    type: sum
    sql: ${TABLE}.basket_size ;;
  }

  dimension_group: day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.day ;;
  }

  measure: product_total {
    type: sum
    sql: ${TABLE}.product_total ;;
  }

  dimension: session {
    type: string
    sql: ${TABLE}.session ;;
  }

  dimension: tx_cost {
    type: number
    sql: ${TABLE}.tx_cost ;;
  }

  dimension: tx_cur {
    type: string
    sql: ${TABLE}.tx_cur ;;
  }

  dimension: tx_id {
    type: string
    sql: ${TABLE}.tx_id ;;
  }

  measure: tx_tax {
    type: sum
    sql: ${TABLE}.tx_tax ;;
  }

  measure: tx_total {
    type: sum
    sql: ${TABLE}.tx_total ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.user ;;
  }

  dimension: visitor {
    type: string
    sql: ${TABLE}.visitor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
