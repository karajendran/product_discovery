#Add to cart rate
view: search_to_add_to_cart {
  derived_table: {
    sql: SELECT (mv_add_to_cart.day),mv_add_to_cart.session
      FROM search_to_detail_page_view AS view , `retail.mv_add_to_cart` AS mv_add_to_cart
      Where mv_add_to_cart.day)=(view.day ) and mv_add_to_cart.session = view.session
       ;;
  }
  measure:  search_to_add_cart_count {
    type: number
    sql: count(${add_to_cart_session}) ;;
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

  dimension: add_to_cart_session {
    type: string
    sql: ${TABLE}.session ;;
  }

  set: detail {
    fields: [day, add_to_cart_session]
  }
}
