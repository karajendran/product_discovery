view: tbl_events {
  sql_table_name: `retail.tbl_events`
    ;;

  ##### PERIOD OVER PERIOD ANALYSIS ####

  parameter: period {
    label: "Timeframe"
    view_label: "Period over Period"
    type: unquoted
    allowed_value: {
      label: "Week to Date"
      value: "Week"
    }
    allowed_value: {
      label: "Month to Date"
      value: "Month"
    }
    allowed_value: {
      label: "Quarter to Date"
      value: "Quarter"
    }
    allowed_value: {
      label: "Year to Date"
      value: "Year"
    }
    default_value: "Period"
  }

  # To get start date we need to get either first day of the year, month or quarter
  dimension: first_date_in_period {
    view_label: "Period over Period"
    datatype: date
    type: date
    hidden: no
    sql: DATE_TRUNC(CURRENT_DATE(), {% parameter period %});;
  }

  #Now get the total number of days in the period
  dimension: days_in_period {
    view_label: "Period over Period"
    type: number
    hidden: no
    sql: DATE_DIFF(CURRENT_DATE(),${first_date_in_period}, DAY) ;;
  }

  #Now get the first date in the prior period
  dimension: first_date_in_prior_period {
    view_label: "Period over Period"
    datatype: date
    type: date
    hidden: no
    sql: DATE_TRUNC(DATE_ADD(CURRENT_DATE(), INTERVAL -1 {% parameter period %}),{% parameter period %});;
  }

  #Now get the last date in the prior period
  dimension: last_date_in_prior_period {
    datatype: date
    view_label: "Period over Period"
    type: date
    hidden: no
    sql: DATE_ADD(${first_date_in_prior_period}, INTERVAL ${days_in_period} DAY) ;;
  }

  # Now figure out which period each date belongs in
  dimension: period_selected {
    view_label: "Period over Period"
    type: string
    sql:
        CASE
          WHEN ${event_date} >=  ${first_date_in_period}
          THEN 'This {% parameter period %} to Date'
          WHEN ${event_date} >= ${first_date_in_prior_period}
          AND ${event_date} <= ${last_date_in_prior_period}
          THEN 'Prior {% parameter period %} to Date'
          ELSE NULL
          END ;;
  }


  dimension: days_from_period_start {
    view_label: "Period over Period"
    type: number
    sql: CASE WHEN ${period_selected} = 'This {% parameter period %} to Date'
          THEN DATE_DIFF(${event_date}, ${first_date_in_period}, DAY)
          WHEN ${period_selected} = 'Prior {% parameter period %} to Date'
          THEN DATE_DIFF(${event_date}, ${first_date_in_prior_period}, DAY)
          ELSE NULL END;;
  }

  ##### DIMENSIONS ####

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

  dimension: event_type_new {
    type: string
    sql: CASE WHEN ${event_type} = 'detail-page-view' THEN 'Product View'
              WHEN ${event_type} =  'search' THEN 'Product Search'
              ELSE 'Other'
              END;;
  }

  dimension: product_details {
    hidden: yes
    sql: ${TABLE}.product_details ;;
  }

  dimension: purchase_transaction__cost {
    type: number
    sql: ${TABLE}.purchase_transaction.cost ;;
    group_label: "Purchase Transaction"
    group_item_label: "Cost"
  }

  dimension: purchase_transaction__currency_code {
    type: string
    sql: ${TABLE}.purchase_transaction.currency_code ;;
    group_label: "Purchase Transaction"
    group_item_label: "Currency Code"
  }

  dimension: purchase_transaction__id {
    type: string
    sql: ${TABLE}.purchase_transaction.id ;;
    group_label: "Purchase Transaction"
    group_item_label: "ID"
  }

  dimension: purchase_transaction__revenue {
    type: number
    sql: ${TABLE}.purchase_transaction.revenue ;;
    group_label: "Purchase Transaction"
    group_item_label: "Revenue"
  }

  dimension: purchase_transaction__tax {
    type: number
    sql: ${TABLE}.purchase_transaction.tax ;;
    group_label: "Purchase Transaction"
    group_item_label: "Tax"
  }

  dimension: search_query {
    type: string
    sql: ${TABLE}.search_query ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitor_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: tbl_events__product_details {
  dimension: product__cost {
    type: number
    sql: ${TABLE}.product.cost ;;
    group_label: "Product"
    group_item_label: "Cost"
  }

  dimension: product__currency_code {
    type: string
    sql: ${TABLE}.product.currency_code ;;
    group_label: "Product"
    group_item_label: "Currency Code"
  }

  dimension: product__id {
    type: string
    sql: ${TABLE}.product.id ;;
    group_label: "Product"
    group_item_label: "ID"
  }

  dimension: product__price {
    type: number
    sql: ${TABLE}.product.price ;;
    group_label: "Product"
    group_item_label: "Price"
  }

  dimension_group: product__price_effective {
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
    sql: ${TABLE}.product.price_effective_time ;;
  }

  dimension_group: product__price_expire {
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
    sql: ${TABLE}.product.price_expire_time ;;
  }

  measure: quantity {
    type: sum
    sql: quantity ;;
  }

  dimension: tbl_events__product_details {
    type: string
    hidden: yes
    sql: tbl_events__product_details ;;
  }
  measure: total_sales {
    type: number
    sql: ${quantity} * ${product__price} ;;
    value_format: "$#,##0.00"
  }
}
