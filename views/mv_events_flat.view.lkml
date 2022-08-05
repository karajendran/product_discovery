view: mv_events_flat {
  sql_table_name: `retail.mv_events_flat`
    ;;

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_time ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: event_type_sort {
    # hidden: yes
    type: string
    sql: CASE WHEN ${event_type} = 'search' THEN 1
              WHEN ${event_type} = 'detail-page-view' THEN 2
              WHEN ${event_type} = 'add-to-cart' THEN 3
              WHEN ${event_type} = 'purchase-complete' THEN 4
              ELSE 5 END
              ;;
  }

  dimension: session {
    type: string
    sql: ${TABLE}.session ;;
  }

  dimension: ts {
    type: number
    sql: ${TABLE}.ts ;;
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
