- dashboard: product_discovery_dashboards
  title: Product Discovery Dashboards
  layout: newspaper
  preferred_viewer: dashboards
  description: ''
  preferred_slug: 5GNAWje1wucVeHfLZW0Bwl
  elements:
  - title: Most Searched Products
    name: Most Searched Products
    model: product_discovery_v1
    explore: most_searched_product
    type: looker_pie
    fields: [most_searched_product.sku, most_searched_product.title, most_searched_product.view_count]
    sorts: [most_searched_product.view_count desc]
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
    hidden_fields: [most_searched_product.sku]
    refresh: 1 hour
    listen: {}
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Most Viewed Products
    name: Most Viewed Products
    model: product_discovery_v1
    explore: most_viewed_product
    type: looker_pie
    fields: [most_viewed_product.sku, most_viewed_product.title, most_viewed_product.view_count]
    sorts: [most_viewed_product.view_count desc]
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
    hidden_fields: [most_viewed_product.sku]
    series_types: {}
    refresh: 1 hour
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Abandonment Rate
    name: Abandonment Rate
    model: product_discovery_v1
    explore: abandonment_rate
    type: looker_single_record
    fields: [abandonment_rate.total_sessions, abandonment_rate.added, abandonment_rate.abandoned,
      abandonment_rate.converted]
    sorts: [abandonment_rate.total_sessions]
    limit: 500
    show_view_names: false
    defaults_version: 1
    refresh: 1 hour
    listen: {}
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Top Viewed Products
    name: Top Viewed Products
    model: product_discovery_v1
    explore: mv_detail_page_view
    type: looker_grid
    fields: [mv_detail_page_view.prd_id, mv_detail_page_view.count]
    sorts: [mv_detail_page_view.count desc]
    limit: 500
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      mv_detail_page_view.prd_id: Product ID
      mv_detail_page_view.count: View Count
    series_cell_visualizations:
      mv_detail_page_view.count:
        is_active: true
    series_text_format:
      mv_detail_page_view.prd_id: {}
    defaults_version: 1
    refresh: 1 hour
    listen:
      Time Filter: mv_detail_page_view.day_date
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Most Searched Product Categories
    name: Most Searched Product Categories
    model: product_discovery_v1
    explore: most_searched_product_category
    type: looker_pie
    fields: [most_searched_product_category.search_count, most_searched_product_category.categories]
    sorts: [most_searched_product_category.search_count desc]
    limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    series_colors: {}
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
    refresh: 1 hour
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Most Viewed Product Categories
    name: Most Viewed Product Categories
    model: product_discovery_v1
    explore: most_viewed_product_category
    type: looker_pie
    fields: [most_viewed_product_category.categories, most_viewed_product_category.search_count]
    sorts: [most_viewed_product_category.search_count desc]
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
    refresh: 1 hour
    listen: {}
    row: 0
    col: 8
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
