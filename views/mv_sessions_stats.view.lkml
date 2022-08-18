view: mv_sessions_stats {
  sql_table_name: `retail.mv_sessions_stats`
    ;;

  dimension: cnt_add_cart {
    type: number
    sql: ${TABLE}.cnt_add_cart ;;
  }

  dimension: cnt_detail_page {
    type: number
    sql: ${TABLE}.cnt_detail_page ;;
  }

  dimension: cnt_purchased {
    type: number
    sql: ${TABLE}.cnt_purchased ;;
  }

  dimension: cnt_purchased_products {
    type: number
    sql: ${TABLE}.cnt_purchased_products ;;
  }

  dimension: cnt_search {
    type: number
    sql: ${TABLE}.cnt_search ;;
  }

  dimension: cnt_search_products {
    type: number
    sql: ${TABLE}.cnt_search_products ;;
  }

  dimension: converted {
    type: number
    sql: ${TABLE}.converted ;;
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

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: session {
    type: string
    sql: ${TABLE}.session ;;
  }

  dimension: sum_purchased {
    type: number
    sql: ${TABLE}.sum_purchased ;;
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
