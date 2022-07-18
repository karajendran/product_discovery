- dashboard: ecommerce
  title: Ecommerce Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100
  description: 'Ecommerce Dashboard'
  refresh: 1 hour
  preferred_slug: 5GNAWje1wucVeHfLZW0Bwl
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
    refresh: 1 hour
    note_state: collapsed
    note_display: below
    note_text: From Events Flat table
    listen:
      Time Filter: mv_events_flat.event_date
    row: 6
    col: 16
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
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 22f16759-9d51-44b0-99bc-2415c9f7ffdf
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
    refresh: 1 hour
    note_state: collapsed
    note_display: below
    note_text: From Events Flat table
    listen:
      Time Filter: mv_events_flat.event_date
    row: 0
    col: 16
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
