view: tbl_stop_words {
  sql_table_name: `retail.tbl_stop_words`
    ;;

  dimension: word {
    type: string
    sql: ${TABLE}.word ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
