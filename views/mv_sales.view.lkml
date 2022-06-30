view: mv_sales {
  sql_table_name: `retail.mv_sales`
    ;;

  dimension: basket_size {
    type: number
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

  dimension: product_total {
    type: number
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

  dimension: tx_tax {
    type: number
    sql: ${TABLE}.tx_tax ;;
  }

  dimension: tx_total {
    type: number
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
