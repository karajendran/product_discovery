view: test_new {
  derived_table: {
    explore_source: order_items {}
    sql: SELECT
          SUM(mv_sessions_stats.cnt_detail_page)  AS mv_sessions_stats_cnt_detail_page,
          SUM(mv_sessions_stats.cnt_add_cart)  AS mv_sessions_stats_cnt_add_cart,
          SUM(mv_sessions_stats.cnt_purchased)  AS mv_sessions_stats_cnt_purchased,
          SUM(mv_sessions_stats.cnt_purchased_products)  AS mv_sessions_stats_cnt_purchased_products,
          SUM(mv_sessions_stats.converted)  AS mv_sessions_stats_converted
      FROM `retail.mv_sessions_stats`
           AS mv_sessions_stats
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: mv_sessions_stats_cnt_detail_page {
    type: number
    sql: ${TABLE}.mv_sessions_stats_cnt_detail_page ;;
  }

  dimension: mv_sessions_stats_cnt_add_cart {
    type: number
    sql: ${TABLE}.mv_sessions_stats_cnt_add_cart ;;
  }

  dimension: mv_sessions_stats_cnt_purchased {
    type: number
    sql: ${TABLE}.mv_sessions_stats_cnt_purchased ;;
  }

  dimension: mv_sessions_stats_cnt_purchased_products {
    type: number
    sql: ${TABLE}.mv_sessions_stats_cnt_purchased_products ;;
  }

  dimension: mv_sessions_stats_converted {
    type: number
    sql: ${TABLE}.mv_sessions_stats_converted ;;
  }

  set: detail {
    fields: [mv_sessions_stats_cnt_detail_page, mv_sessions_stats_cnt_add_cart, mv_sessions_stats_cnt_purchased, mv_sessions_stats_cnt_purchased_products, mv_sessions_stats_converted]
  }
}
