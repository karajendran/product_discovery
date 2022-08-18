view: abandonment_rate {
  derived_table: {
    sql: WITH
        total_sessions AS (
          SELECT COUNT(DISTINCT(session_id)) as total from `retail-shared-demos.retail.tbl_events`
        ),
        sessions_adding_to_cart AS (
          SELECT COUNT(DISTINCT(session_id)) AS adding_to_cart
          FROM `retail-shared-demos.retail.tbl_events` where event_type = 'add-to-cart'
        ),
        sessions_abandoned AS (
          SELECT
            COUNT(DISTINCT(session_id)) AS abandoned
          FROM `retail-shared-demos.retail.tbl_events`
          WHERE event_type = 'add-to-cart' AND
          session_id NOT IN (SELECT session_id FROM `retail-shared-demos.retail.tbl_events` WHERE event_type = 'purchase-complete')
        ),
        sessions_converted AS (
          SELECT
            COUNT(DISTINCT(session_id)) AS not_abandoned
          FROM `retail-shared-demos.retail.tbl_events`
          WHERE event_type = 'add-to-cart' AND
          session_id IN (SELECT session_id FROM `retail-shared-demos.retail.tbl_events` WHERE event_type = 'purchase-complete')
        )
        SELECT
          t0.total AS total_sessions,
          t1.abandoned AS abandoned,
          t2.not_abandoned AS converted,
          t3.adding_to_cart AS added
        FROM
          total_sessions t0,
          sessions_abandoned t1,
          sessions_converted t2,
          sessions_adding_to_cart t3
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: total_sessions {
    type: number
    sql: ${TABLE}.total_sessions ;;
  }

  dimension: abandoned {
    type: number
    sql: ${TABLE}.abandoned ;;
  }

  dimension: converted {
    type: number
    sql: ${TABLE}.converted ;;
  }

  dimension: added {
    type: number
    sql: ${TABLE}.added ;;
  }

  set: detail {
    fields: [total_sessions, abandoned, converted, added]
  }
}
