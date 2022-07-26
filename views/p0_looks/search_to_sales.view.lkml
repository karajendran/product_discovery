#Conversion rate
view: search_to_sales {
  derived_table: {
    sql: SELECT (mv_sales.day),mv_sales.session, mv_sales.total_sales
      FROM `retail.mv_search` AS mv_search , `retail.mv_sales` AS mv_sales
      Where (mv_sales.day)=(mv_search.day ) and mv_sales.session = mv_search.session
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: day {
    type: date
    datatype: date
    sql: ${TABLE}.day ;;
  }

  dimension: search_to_sales_session {
    type: string
    sql: ${TABLE}.session ;;
  }

  set: detail {
    fields: [day, search_to_sales_session]
  }
  measure: search_to_sales_count {
    type: number
    sql: count(${search_to_sales_session}) ;;
  }

  measure: total_search_sessions {
    type:  number
    sql: select count(*) from `retail.mv_search`;;
  }
  #Per Transaction
  measure: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
    value_format: "$#,##0.00"
  }
}
