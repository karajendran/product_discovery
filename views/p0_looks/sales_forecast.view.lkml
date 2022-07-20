view: sales_forecast {
  derived_table: {
    sql: SELECT
        ts,
        history_value,
        NULL AS forecast_value,
        NULL AS prediction_interval_lower_bound,
        NULL AS prediction_interval_upper_bound,
      FROM
        (
          SELECT
          TIMESTAMP(EXTRACT(DATE FROM event_time)) as ts,
          SUM(purchase_transaction.revenue) as history_value,
          FROM `retail-shared-demos.retail.tbl_events`
          WHERE event_type = 'purchase-complete'
          GROUP BY ts
          ORDER BY ts ASC
        )
      UNION ALL
        SELECT
          forecast_timestamp AS event_time,
          NULL AS history_value,
          forecast_value,
          prediction_interval_lower_bound,
          prediction_interval_upper_bound
        FROM
          ML.FORECAST(MODEL `retail-shared-demos.retail.profit_projection_lg`,
                           STRUCT(30 AS horizon, 0.8 AS confidence_level))
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: ts {
    type: time
    sql: ${TABLE}.ts ;;
  }

  measure: history_value {
    type: sum
    sql: ${TABLE}.history_value ;;
  }

  measure: forecast_value {
    type: sum
    sql: ${TABLE}.forecast_value ;;
  }

  measure: prediction_interval_lower_bound {
    type: sum
    sql: ${TABLE}.prediction_interval_lower_bound ;;
  }

  measure: prediction_interval_upper_bound {
    type: sum
    sql: ${TABLE}.prediction_interval_upper_bound ;;
  }

  set: detail {
    fields: [ts_time, history_value, forecast_value, prediction_interval_lower_bound, prediction_interval_upper_bound]
  }
}
