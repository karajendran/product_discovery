- dashboard: sales
  title: Sales
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 hour
  preferred_slug: DlFLZHahkUzPUtTn4UpoS0
  elements:
  - title: Best Performing Products By Sales
    name: Best Performing Products By Sales
    model: product_discovery_v1
    explore: best_performing_product
    type: looker_grid
    fields: [best_performing_product.sku, best_performing_product.sales]
    sorts: [best_performing_product.sales desc]
    total: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      best_performing_product.sku: SKU
      best_performing_product.sales: Total Sales in $
    series_cell_visualizations:
      best_performing_product.sales:
        is_active: true
    header_font_color: "#9334E6"
    header_background_color: "#12B5CB"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    refresh: 1 hour
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Total sales by SKU
    name: Total sales by SKU
    model: product_discovery_v1
    explore: tbl_events
    type: looker_grid
    fields: [tbl_events__product_details.product__id, tbl_events__product_details.product__price,
      tbl_events__product_details.quantity, tbl_events.event_type]
    filters:
      tbl_events.event_type: purchase-complete
    sorts: [total_sales]
    total: true
    dynamic_fields: [{table_calculation: total_sales, label: Total Sales, expression: "${tbl_events__product_details.quantity}*${tbl_events__product_details.product__price}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    header_font_color: "#9334E6"
    header_background_color: "#12B5CB"
    hidden_fields: [tbl_events.event_type, tbl_events__product_details.quantity, tbl_events__product_details.product__price]
    defaults_version: 1
    refresh: 1 hour
    listen:
      Time Filter: tbl_events.event_date
    row: 6
    col: 0
    width: 8
    height: 6
  filters:
  - name: Time Filter
    title: Time Filter
    type: date_filter
    default_value: 4 months
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
