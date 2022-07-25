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
    value_format: "$#,##0.00"
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

  measure: tax {
    type: sum
    sql: ${TABLE}.tx_tax ;;
    value_format: "$#,##0.00"
  }

  #Per Transaction
  measure: total_sales {
    type: sum
    sql: ${TABLE}.tx_total ;;
    value_format: "$#,##0.00"
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

  measure: shipping_and_discount {
    type: number
    sql: ${total_sales} -${product_total}-${tax} ;;
    value_format: "$#,##0.00"
  }
  measure: liability {
    type: number
    sql: ${tax}+${shipping_and_discount} ;;
    value_format: "$#,##0.00"
  }
  measure: total_num_of_orders {
    type: number
    sql: count(${session}) ;;
  }
  measure: total_visitors {
    type: number
    sql: count(distinct(${visitor})) ;;
  }

  #Average Order Value
  measure: AOV {
    type: number
    sql: ${mv_sales.total_sales}/${mv_sales.count} ;;
    value_format: "$#,##0.00"
  }
}
