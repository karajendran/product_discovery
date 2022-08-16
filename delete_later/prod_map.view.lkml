view: prod_map {
  derived_table: {
    explore_source: tbl_products {
      column: id {}
      column: title {}
      column: tbl_products__categories { field: tbl_products__categories.tbl_products__categories }
    }
  }
  dimension: id {
    label: "SKU"
    primary_key: yes
    description: "product sku"
  }
  dimension: title {
    description: "product name"
  }
  dimension: tbl_products__categories {
    label: "Tbl Products: Categories Tbl Products Categories"
    description: ""
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  set: detail {
    fields: [id, title, tbl_products__categories]
  }
}
