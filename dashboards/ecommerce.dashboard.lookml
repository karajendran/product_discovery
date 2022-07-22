- dashboard: ecommerce_dashboard
  title: Ecommerce Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: Ecommerce Dashboard
  refresh: 1 hour
  preferred_slug: ZLhCDVTxY6JDzOPusXX5xP
  elements:
  - title: Conversion/Abandonment Rate
    name: Conversion/Abandonment Rate
    model: product_discovery_v1
    explore: mv_events_flat
    type: looker_column
    fields: [mv_events_flat.event_type, mv_events_flat.count]
    filters:
      mv_events_flat.event_type: detail-page-view,add-to-cart,purchase-complete
    sorts: [mv_events_flat.count desc]
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
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Session Count, orientation: left, series: [{axisId: mv_events_flat.count,
            id: mv_events_flat.count, name: Mv Events Flat}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Event
    show_dropoff: true
    defaults_version: 1
    note_state: collapsed
    note_display: below
    note_text: From Events Flat table
    refresh: 1 hr
    listen:
      Time Filter: mv_events_flat.event_date
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Conversion Rate
    name: Conversion Rate
    model: product_discovery_v1
    explore: mv_events_flat
    type: looker_funnel
    fields: [mv_events_flat.event_type, mv_events_flat.count]
    filters:
      mv_events_flat.event_type: detail-page-view,add-to-cart,purchase-complete
    sorts: [mv_events_flat.count desc]
    leftAxisLabelVisible: true
    leftAxisLabel: Events
    rightAxisLabelVisible: false
    rightAxisLabel: Count
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: inline
    labelColorEnabled: false
    labelColor: "#FFF"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    isStepped: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Session Count, orientation: left, series: [{axisId: mv_events_flat.count,
            id: mv_events_flat.count, name: Mv Events Flat}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Event
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: row
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    trellis_rows: 1
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
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
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    note_state: collapsed
    note_display: below
    note_text: From Events Flat table
    refresh: 1 hr
    listen:
      Time Filter: mv_events_flat.event_date
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Total Number of Searches
    name: Total Number of Searches
    model: product_discovery_v1
    explore: tbl_events
    type: single_value
    fields: [tbl_events.event_type, tbl_events.count]
    filters:
      tbl_events.event_type: search
    sorts: [tbl_events.count desc]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Total Number of Searches
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
      Time Filter: tbl_events.event_date
    row: 0
    col: 8
    width: 8
    height: 6
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
  - title: Number Of Visitors
    name: Number Of Visitors
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.total_visitors]
    filters: {}
    limit: 1000
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#E52592"
    single_value_title: Total Visitors
    defaults_version: 1
    series_types: {}
    listen:
      Time Filter: mv_sales.day_date
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Conversion rate
    name: Conversion rate
    model: product_discovery_v1
    explore: search_to_sales
    type: single_value
    fields: [search_to_sales.search_to_sales_count]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#A8A116"
    single_value_title: Purchase from search results
    defaults_version: 1
    listen:
      Time Filter: search_to_sales.day
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Add to cart rate
    name: Add to cart rate
    model: product_discovery_v1
    explore: search_to_add_to_cart
    type: single_value
    fields: [search_to_add_to_cart.search_to_add_cart_count]
    filters: {}
    limit: 1000
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#A8A116"
    single_value_title: Add-to-cart events occurring from Search results
    defaults_version: 1
    series_types: {}
    listen:
      Time Filter: search_to_add_to_cart.day
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Click-through rate
    name: Click-through rate
    model: product_discovery_v1
    explore: search_to_detail_page_view
    type: single_value
    fields: [search_to_detail_page_view.search_to_detail_page_view_count]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#A8A116"
    single_value_title: Number of clicks from Search results
    series_types: {}
    defaults_version: 1
    listen:
      Time Filter: search_to_detail_page_view.day
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
