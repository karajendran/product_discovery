view: mv_add_to_cart_v2 {
  sql_table_name: `retail.mv_add_to_cart_v2`
    ;;

  dimension: categories {
    hidden: yes
    sql: ${TABLE}.categories ;;
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

  dimension: prd_id {
    type: string
    sql: ${TABLE}.prd_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: session {
    type: string
    sql: ${TABLE}.session ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: ts {
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

view: mv_add_to_cart_v2__categories {
  dimension: mv_add_to_cart_v2__categories {
    type: string
    sql: mv_add_to_cart_v2__categories ;;
  }
}
