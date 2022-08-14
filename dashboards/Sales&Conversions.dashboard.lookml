- dashboard: sales__conversions_new
  title: Sales & Conversions New
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: iK4LeocUheu1jVW06kmZNm
  elements:
  - title: Total Revenue
    name: Total Revenue
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.total_sales, mv_sales.period]
    filters: {}
    sorts: [mv_sales.period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${mv_sales.total_sales}/offset(${mv_sales.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Total Revenue
    comparison_label: vs Previous Period
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Current Date Range: mv_sales.current_date_range
      'Compare To:': mv_sales.compare_to
    row:
    col:
    width:
    height:
  - title: AOV
    name: AOV
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.period, mv_sales.AOV]
    filters: {}
    sorts: [mv_sales.period]
    limit: 1000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${mv_sales.AOV}/offset(${mv_sales.AOV},1)-1",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#1A73E8"
    single_value_title: Average order value (AOV)
    value_format: "$0.00"
    comparison_label: vs previous period
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [mv_sales.tx_total]
    listen:
      Current Date Range: mv_sales.current_date_range
      'Compare To:': mv_sales.compare_to
    row:
    col:
    width:
    height:
  - title: AOS
    name: AOS
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.AOS, mv_sales.period]
    filters: {}
    sorts: [mv_sales.period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${mv_sales.AOS}/offset(${mv_sales.AOS},1)-1",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: Average Order Size
    comparison_label: vs previous period
    series_types: {}
    defaults_version: 1
    listen:
      Current Date Range: mv_sales.current_date_range
      'Compare To:': mv_sales.compare_to
    row:
    col:
    width:
    height:
  - title: Total Number Of Purchases
    name: Total Number Of Purchases
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.total_num_of_orders, mv_sales.period]
    filters: {}
    sorts: [mv_sales.period]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${mv_sales.total_num_of_orders}/offset(${mv_sales.total_num_of_orders},1)-1",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FF8168"
    single_value_title: Total Number Of Purchases
    comparison_label: vs Previous Period
    defaults_version: 1
    listen:
      Current Date Range: mv_sales.current_date_range
      'Compare To:': mv_sales.compare_to
    row:
    col:
    width:
    height:
  - title: Total Customers who purchased
    name: Total Customers who purchased
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.total_visitors, mv_sales.period]
    filters: {}
    sorts: [mv_sales.period]
    limit: 1000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${mv_sales.total_visitors}/offset(${mv_sales.total_visitors},1)-1",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#E52592"
    single_value_title: Total Customers who purchased
    defaults_version: 1
    series_types: {}
    listen:
      Current Date Range: mv_sales.current_date_range
      'Compare To:': mv_sales.compare_to
    row:
    col:
    width:
    height:
  - title: Conversion/Abandonment Rate
    name: Conversion/Abandonment Rate
    model: product_discovery_v1
    explore: tbl_events
    type: looker_column
    fields: [tbl_events.event_type_new, tbl_events.count]
    filters:
      tbl_events.event_type_new: ''
      tbl_events.current_date_range: 4 months
    sorts: [tbl_events.event_type_new]
    limit: 1000
    column_limit: 50
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
    y_axes: [{label: Count, orientation: left, series: [{axisId: tbl_events.count,
            id: tbl_events.count, name: Event Count}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    listen: {}
    row:
    col:
    width:
    height:
  - title: Total Revenue Breakdown
    name: Total Revenue Breakdown
    model: product_discovery_v1
    explore: mv_sales
    type: looker_column
    fields: [mv_sales.product_total, mv_sales.shipping_and_discount, mv_sales.tax,
      mv_sales.period]
    filters: {}
    sorts: [mv_sales.period]
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: left
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: mv_sales.total_sales,
            id: mv_sales.total_sales, name: Total Sales}, {axisId: mv_sales.product_total,
            id: mv_sales.product_total, name: Product Total}, {axisId: mv_sales.shipping_and_discount,
            id: mv_sales.shipping_and_discount, name: Shipping and Discount}, {axisId: mv_sales.tax,
            id: mv_sales.tax, name: Tax}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    series_types: {}
    series_colors: {}
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: true
    orientation: automatic
    labelPosition: inline
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    isStepped: true
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
    listen:
      Current Date Range: mv_sales.current_date_range
      'Compare To:': mv_sales.compare_to
    row:
    col:
    width:
    height:
  filters:
  - name: Current Date Range
    title: 1. Current Date Range
    type: field_filter
    default_value: 4 months
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: product_discovery_v1
    explore: mv_sales
    listens_to_filters: []
    field: mv_sales.current_date_range
  - name: 'Compare To:'
    title: '2. Compare To:'
    type: field_filter
    default_value: Period
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: product_discovery_v1
    explore: mv_sales
    listens_to_filters: []
    field: mv_sales.compare_to
