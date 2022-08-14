view: tbl_events {
  sql_table_name: `retail.tbl_events`
    ;;

  ##### PERIOD OVER PERIOD ANALYSIS ####

  filter: current_date_range {
    type: date
    view_label: "_PoP"
    label: "1. Current Date Range"
    description: "Select the current date range you are interested in. Make sure any other filter on Event Date covers this period, or is removed."
    sql: ${period} IS NOT NULL ;;
    convert_tz: no
  }

  parameter: compare_to {
    view_label: "_PoP"
    description: "Select the templated previous period you would like to compare to. Must be used with Current Date Range filter"
    label: "2. Compare To:"
    type: unquoted
    allowed_value: {
      label: "Previous Period"
      value: "Period"
    }
    allowed_value: {
      label: "Previous Week"
      value: "Week"
    }
    allowed_value: {
      label: "Previous Month"
      value: "Month"
    }
    allowed_value: {
      label: "Previous Quarter"
      value: "Quarter"
    }
    allowed_value: {
      label: "Previous Year"
      value: "Year"
    }
    default_value: "Period"
    # view_label: "_PoP" view_label having been declared twice in the article
  }



## ------------------ HIDDEN HELPER DIMENSIONS  ------------------ ##

  dimension: days_in_period {
    # hidden:  yes
    view_label: "_PoP"
    description: "Gives the number of days in the current period date range"
    type: number
    sql: DATE_DIFF( DATE({% date_start current_date_range %}), DATE({% date_end current_date_range %}), DAY) ;;
  }

  dimension: period_2_start {
    # hidden:  yes
    view_label: "_PoP"
    description: "Calculates the start of the previous period"
    type: date
    sql:
        {% if compare_to._parameter_value == "Period" %}
        DATE_ADD(DATE({% date_start current_date_range %}), INTERVAL ${days_in_period} DAY)
        {% else %}
        DATE_SUB(DATE({% date_start current_date_range %}), INTERVAL 1 {% parameter compare_to %})
        {% endif %};;
    convert_tz: no
  }

  dimension: period_2_end {
    # hidden:  yes
    view_label: "_PoP"
    description: "Calculates the end of the previous period"
    type: date
    sql:
        {% if compare_to._parameter_value == "Period" %}
        DATE_SUB(DATE({% date_start current_date_range %}), INTERVAL 1 DAY)
        {% else %}
        DATE_SUB(DATE_SUB(DATE({% date_end current_date_range %}), INTERVAL 1 DAY), INTERVAL 1 {% parameter compare_to %})
        {% endif %};;
    convert_tz: no
  }

  dimension: day_in_period {
    hidden: yes
    description: "Gives the number of days since the start of each period. Use this to align the event dates onto the same axis, the axes will read 1,2,3, etc."
    type: number
    sql:
    {% if current_date_range._is_filtered %}
        CASE
        WHEN {% condition current_date_range %} ${event_raw} {% endcondition %}
        THEN DATE_DIFF( DATE({% date_start current_date_range %}),  ${event_date}, DAY) + 1
        WHEN ${event_date} between ${period_2_start} and ${period_2_end}
        THEN DATE_DIFF(${period_2_start}, ${event_date}, DAY) + 1
        END
    {% else %} NULL
    {% endif %}
    ;;
  }

  dimension: order_for_period {
    hidden: yes
    type: number
    sql:
        {% if current_date_range._is_filtered %}
            CASE
            WHEN {% condition current_date_range %} ${event_raw} {% endcondition %}
            THEN 1
            WHEN ${event_date} between ${period_2_start} and ${period_2_end}
            THEN 2
            END
        {% else %}
            NULL
        {% endif %}
        ;;
  }

  ## ------- HIDING FIELDS  FROM ORIGINAL VIEW FILE  -------- ##

  # dimension_group: created {hidden: yes}
  # dimension: ytd_only {hidden:yes}
  # dimension: mtd_only {hidden:yes}
  # dimension: wtd_only {hidden:yes}


## ------------------ DIMENSIONS TO PLOT ------------------ ##

  dimension_group: date_in_period {
    description: "Use this as your grouping dimension when comparing periods. Aligns the previous periods onto the current period"
    label: "Current Period"
    type: time
    # sql: DATE_ADD( ${day_in_period} - 1, DATE({% date_start current_date_range %}), DAY) ;;
    sql: DATE_SUB(DATE({% date_start current_date_range %}), INTERVAL (${day_in_period} - 1) DAY)  ;;
    view_label: "_PoP"
    timeframes: [
      date,
      hour_of_day,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week_of_year,
      month,
      month_name,
      month_num,
      year]
    convert_tz: no
  }


  dimension: period {
    view_label: "_PoP"
    label: "Period"
    description: "Pivot me! Returns the period the metric covers, i.e. either the 'This Period' or 'Previous Period'"
    type: string
    order_by_field: order_for_period
    sql:
        {% if current_date_range._is_filtered %}
            CASE
            WHEN {% condition current_date_range %} ${event_raw} {% endcondition %}
            THEN 'This {% parameter compare_to %}'
            WHEN ${event_date} between ${period_2_start} and ${period_2_end}
            THEN 'Last {% parameter compare_to %}'
            END
        {% else %}
            NULL
        {% endif %}
        ;;
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
    sql: CASE WHEN ${event_type} =  'search' THEN '1_Search'
              WHEN ${event_type} = 'detail-page-view' THEN '2_DetailPageView'
              WHEN ${event_type} =  'add-to-cart' THEN '3_AddToCart'
              WHEN ${event_type} =  'purchase-complete' THEN '4_Purchase'
              ELSE 'Other'
              END;;
  }

  dimension: total_no_of_searches {

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
