- dashboard: ecommerce_dashboard
  title: Ecommerce Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: |-
    User: Discovery solutions - Search customer - a person from the marketing, ecommerce, and/or data science team that is a sponsor/stakeholder of GCP

    Objective: Track and assess the performance of GCP Retail Search, and its impact on business performance
  refresh: 1 hour
  preferred_slug: ZLhCDVTxY6JDzOPusXX5xP
  elements:
  - title: Total Sessions
    name: Total Sessions
    model: product_discovery_v1
    explore: mv_events_flat
    type: looker_donut_multiples
    fields: [mv_events_flat.event_type, mv_events_flat.count]
    pivots: [mv_events_flat.event_type]
    filters:
      mv_events_flat.event_type: search,add-to-cart,detail-page-view,purchase-complete
    sorts: [mv_events_flat.event_type]
    show_value_labels: true
    font_size: 25
    hide_legend: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels:
      add-to-cart - mv_events_flat.count: Add to cart
      detail-page-view - mv_events_flat.count: Detail Views
      purchase-complete - mv_events_flat.count: Purchases
      search - mv_events_flat.count: Searches
    leftAxisLabelVisible: true
    leftAxisLabel: Event type
    rightAxisLabelVisible: true
    rightAxisLabel: Count
    smoothedBars: true
    isStepped: true
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: true
    labelColor: "#4c3dff"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Count, orientation: left, series: [{axisId: mv_events_flat.count,
            id: add-to-cart - mv_events_flat.count, name: add-to-cart}, {axisId: mv_events_flat.count,
            id: search - mv_events_flat.count, name: search}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Date
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: left
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    truncate_column_names: false
    map: auto
    map_projection: ''
    quantize_colors: false
    listen:
      Time Filter: mv_events_flat.event_date
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Total Visitors (searchers)
    name: Total Visitors (searchers)
    model: product_discovery_v1
    explore: mv_search
    type: single_value
    fields: [mv_search.total_visitors]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E52592"
    single_value_title: Total Visitors
    defaults_version: 1
    listen:
      Time Filter: mv_search.day_date
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Total Sales generated from Searches
    name: Total Sales generated from Searches
    model: product_discovery_v1
    explore: search_to_sales
    type: single_value
    fields: [search_to_sales.total_sales]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#7CB342"
    single_value_title: Total Sales generated from Searches
    defaults_version: 1
    listen:
      Time Filter: search_to_sales.day
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Top search terms
    name: Top search terms
    model: product_discovery_v1
    explore: mv_search
    type: looker_grid
    fields: [mv_search.query, mv_search.count]
    filters: {}
    sorts: [mv_search.count desc]
    limit: 500
    column_limit: 50
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
      mv_search.query: Search Term
      mv_search.count: Count
    series_cell_visualizations:
      mv_search.count:
        is_active: true
    series_text_format:
      mv_search.query: {}
    header_font_color: "#9334E6"
    header_background_color: "#12B5CB"
    defaults_version: 1
    listen:
      Time Filter: mv_search.day_date
    row: 18
    col: 0
    width: 8
    height: 6
  - title: Top products shown as a result of searches
    name: Top products shown as a result of searches
    model: product_discovery_v1
    explore: mv_search
    type: looker_grid
    fields: [mv_search__results.mv_search__results, mv_search.count]
    filters: {}
    sorts: [mv_search.count desc]
    limit: 500
    column_limit: 50
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
    series_labels:
      mv_search__results.mv_search__results: Product ID
      mv_search.count: Search Count
    series_cell_visualizations:
      mv_search.count:
        is_active: true
        palette:
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    header_font_color: "#9334E6"
    header_background_color: "#12B5CB"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    listen:
      Time Filter: mv_search.day_date
    row: 18
    col: 8
    width: 8
    height: 6
  - title: Total Revenue
    name: Total Revenue
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.day_year, mv_sales.total_sales]
    fill_fields: [mv_sales.day_year]
    filters: {}
    sorts: [mv_sales.day_year desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Total Revenue
    comparison_label: ''
    defaults_version: 1
    listen:
      Time Filter: mv_sales.day_date
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Total Conversion
    name: Total Conversion
    model: product_discovery_v1
    explore: tbl_events
    type: looker_column
    fields: [tbl_events.event_type_new, tbl_events.count]
    filters:
      tbl_events.event_type_new: ''
    sorts: [tbl_events.event_type_new]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: tbl_events.count, id: tbl_events.count,
            name: Event Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Event
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_labels:
      tbl_events.count: Event Count
    show_dropoff: true
    defaults_version: 1
    listen:
      Time Filter: tbl_events.event_date
    row: 24
    col: 0
    width: 8
    height: 6
  - title: Number of Detail page views from Search
    name: Number of Detail page views from Search
    model: product_discovery_v1
    explore: mv_search
    type: single_value
    fields: [mv_search.day_date, mv_search.count, mv_detail_page_view.session]
    sorts: [mv_search.day_date desc]
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'sum(${mv_search.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Number of Detail page views from Search
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
    hidden_fields: [mv_search.day_date, mv_detail_page_view.session, mv_search.count]
    listen:
      Time Filter: mv_search.day_date
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Number of Add-To-Cart from Search
    name: Number of Add-To-Cart from Search
    model: product_discovery_v1
    explore: mv_search
    type: single_value
    fields: [mv_search.day_date, mv_search.count, mv_add_to_cart.session]
    sorts: [mv_search.day_date desc]
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'sum(${mv_search.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Number of Add-To-Cart from Search
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
    hidden_fields: [mv_search.day_date, mv_search.count]
    listen:
      Time Filter: mv_search.day_date
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Number of purchases from Search
    name: Number of purchases from Search
    model: product_discovery_v1
    explore: mv_search
    type: single_value
    fields: [mv_search.day_date, mv_search.count, mv_sales.session]
    sorts: [mv_search.day_date desc]
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'sum(${mv_search.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Number of purchases from Search
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
    hidden_fields: [mv_search.day_date, mv_search.count]
    listen:
      Time Filter: mv_search.day_date
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Number of Searches
    name: Number of Searches
    model: product_discovery_v1
    explore: mv_search
    type: single_value
    fields: [mv_search.count]
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'sum(${mv_search.count})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Number of Searches
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
    hidden_fields: [mv_search.count]
    listen:
      Time Filter: mv_search.day_date
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
      options: []
