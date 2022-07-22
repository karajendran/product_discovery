#Add to cart rate
view: search_to_detail_page_view {
  derived_table: {
    sql: SELECT (mv_detail_page_view.day),mv_detail_page_view.session
      FROM `retail.mv_search` AS mv_search , `retail.mv_detail_page_view` AS mv_detail_page_view
      Where (mv_detail_page_view.day)=(mv_search.day ) and mv_detail_page_view.session = mv_search.session
       ;;
  }
  measure:  search_to_detail_page_view_count {
    type: number
    sql: count(${detail_page_view_session}) ;;
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

  dimension: detail_page_view_session {
    type: string
    sql: ${TABLE}.session ;;
  }

  set: detail {
    fields: [day, detail_page_view_session]
  }
}
