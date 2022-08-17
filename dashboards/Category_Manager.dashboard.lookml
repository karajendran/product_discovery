- dashboard: category_manager
  title: Category Manager
  layout: newspaper
  preferred_viewer: dashboards-next
  description: |-
    Users: Category Manager / Marketing manager - a stakeholder in the organization responsible for sales and/or P&L of a group of products
    Objective: Assess customer behavior wrt products, Track product performance, and identify trending products
  refresh: 1 hour
  preferred_slug: tfGCWCF5znD4ez48bosx2e
  elements:
  - title: Best Performing Products by Sales
    name: Best Performing Products by Sales
    model: product_discovery_v1
    explore: tbl_products
    type: looker_grid
    fields: [best_performing_product.event_time_date, best_performing_product.sku,
      tbl_products.title, best_performing_product.total_sales]
    sorts: [best_performing_product.total_sales desc]
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      best_performing_product.sku: Product Id
      best_performing_product.total_sales: Total Sales
      best_performing_product.event_time_date: Date
    series_column_widths:
      best_performing_product.sku: 100
      best_performing_product.event_time_date: 100
    series_cell_visualizations:
      best_performing_product.total_sales:
        is_active: true
    series_text_format:
      best_performing_product.sku:
        align: center
      best_performing_product.event_time_date:
        align: center
    header_font_color: "#592EC2"
    header_background_color: "#3EB0D5"
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
    series_types: {}
    refresh: 1 hr
    listen:
      Tbl Products Categories: tbl_products__categories.tbl_products__categories
      Time Filter: best_performing_product.event_time_date
    row: 24
    col: 0
    width: 11
    height: 8
  - title: Most Viewed Products
    name: Most Viewed Products
    model: product_discovery_v1
    explore: tbl_products
    type: looker_grid
    fields: [most_viewed_product.sku, tbl_products.title, most_viewed_product.view_count]
    sorts: [most_viewed_product.view_count desc]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    series_labels:
      mv_detail_page_view.prd_id: Product Id
      mv_detail_page_view.count: View Count
    series_column_widths: {}
    series_cell_visualizations:
      mv_detail_page_view.count:
        is_active: true
    series_text_format:
      mv_detail_page_view.prd_id:
        align: left
    header_font_color: "#9334E6"
    header_background_color: "#12B5CB"
    series_value_format:
      mv_detail_page_view.count:
        name: decimal_0
        decimals: '0'
        format_string: "#,##0"
        label: Decimals (0)
        label_prefix: Decimals
    defaults_version: 1
    listen:
      Tbl Products Categories: tbl_products__categories.tbl_products__categories
      Time Filter: most_viewed_product.event_date
    row: 0
    col: 0
    width: 11
    height: 8
  - title: Most Searched Products
    name: Most Searched Products
    model: product_discovery_v1
    explore: tbl_products
    type: looker_grid
    fields: [most_searched_product.sku, most_searched_product.title, most_searched_product.search_count]
    sorts: [most_searched_product.search_count desc]
    limit: 500
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
    truncate_header: true
    series_cell_visualizations:
      most_searched_product.search_count:
        is_active: true
    defaults_version: 1
    listen:
      Tbl Products Categories: tbl_products__categories.tbl_products__categories
      Time Filter: most_searched_product.event_date
    row: 8
    col: 0
    width: 11
    height: 8
  - title: Top 50 Viewed Products
    name: Top 50 Viewed Products
    model: product_discovery_v1
    explore: tbl_products
    type: looker_pie
    fields: [most_viewed_product.sku, tbl_products.title, most_viewed_product.view_count]
    sorts: [most_viewed_product.view_count desc]
    limit: 50
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    series_labels:
      mv_detail_page_view.prd_id: Product Id
      mv_detail_page_view.count: View Count
    series_column_widths: {}
    series_cell_visualizations:
      mv_detail_page_view.count:
        is_active: true
    series_text_format:
      mv_detail_page_view.prd_id:
        align: left
    header_font_color: "#9334E6"
    header_background_color: "#12B5CB"
    series_value_format:
      mv_detail_page_view.count:
        name: decimal_0
        decimals: '0'
        format_string: "#,##0"
        label: Decimals (0)
        label_prefix: Decimals
    defaults_version: 1
    hidden_fields: [most_viewed_product.sku]
    series_types: {}
    listen:
      Tbl Products Categories: tbl_products__categories.tbl_products__categories
      Time Filter: most_viewed_product.event_date
    row: 0
    col: 11
    width: 10
    height: 8
  - title: Top 50 Searched Categories
    name: Top 50 Searched Categories
    model: product_discovery_v1
    explore: tbl_products
    type: looker_pie
    fields: [most_searched_product.count, tbl_products__categories.tbl_products__categories]
    sorts: [most_searched_product.count desc, tbl_products__categories.tbl_products__categories]
    limit: 50
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    series_types: {}
    listen:
      Tbl Products Categories: tbl_products__categories.tbl_products__categories
      Time Filter: most_searched_product.event_date
    row: 16
    col: 11
    width: 10
    height: 8
  - title: Top 50 Viewed Categories
    name: Top 50 Viewed Categories
    model: product_discovery_v1
    explore: tbl_products
    type: looker_pie
    fields: [tbl_products__categories.tbl_products__categories, most_viewed_product.count]
    sorts: [most_viewed_product.count desc, tbl_products__categories.tbl_products__categories]
    limit: 50
    value_labels: legend
    label_type: labPer
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
    truncate_header: true
    series_cell_visualizations:
      most_searched_product.search_count:
        is_active: true
    defaults_version: 1
    series_types: {}
    listen:
      Tbl Products Categories: tbl_products__categories.tbl_products__categories
      Time Filter: most_viewed_product.event_date
    row: 16
    col: 0
    width: 11
    height: 8
  - title: Top 50 Searched Products
    name: Top 50 Searched Products
    model: product_discovery_v1
    explore: tbl_products
    type: looker_pie
    fields: [most_searched_product.sku, most_searched_product.title, most_searched_product.search_count]
    filters:
      tbl_products__categories.tbl_products__categories: ''
    sorts: [most_searched_product.search_count desc]
    limit: 50
    value_labels: legend
    label_type: labPer
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
    truncate_header: true
    series_cell_visualizations:
      most_searched_product.search_count:
        is_active: true
    defaults_version: 1
    hidden_fields: [most_searched_product.sku]
    series_types: {}
    listen:
      Time Filter: most_searched_product.event_date
    row: 8
    col: 11
    width: 10
    height: 8
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
      options: []
  - name: Tbl Products Categories
    title: Tbl Products Categories
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: product_discovery_v1
    explore: tbl_products
    listens_to_filters: []
    field: tbl_products__categories.tbl_products__categories
