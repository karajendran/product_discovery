- dashboard: sales
  title: Sales
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 hour
  preferred_slug: DlFLZHahkUzPUtTn4UpoS0
  elements:
  - title: Sales Forecast
    name: Sales Forecast
    model: product_discovery_v1
    explore: sales_forecast
    type: looker_line
    fields: [sales_forecast.ts_date, sales_forecast.history_value, sales_forecast.forecast_value,
      sales_forecast.prediction_interval_lower_bound, sales_forecast.prediction_interval_upper_bound]
    fill_fields: [sales_forecast.ts_date]
    sorts: [sales_forecast.ts_date desc]
    x_axis_gridlines: true
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
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: Total Sales Amount in $, orientation: left, series: [{axisId: sales_forecast.history_value,
            id: sales_forecast.history_value, name: History Value}, {axisId: sales_forecast.forecast_value,
            id: sales_forecast.forecast_value, name: Forecast Value}, {axisId: sales_forecast.prediction_interval_lower_bound,
            id: sales_forecast.prediction_interval_lower_bound, name: Prediction Interval
              Lower Bound}, {axisId: sales_forecast.prediction_interval_upper_bound,
            id: sales_forecast.prediction_interval_upper_bound, name: Prediction Interval
              Upper Bound}], showLabels: true, showValues: true, valueFormat: '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Time Filter: sales_forecast.ts_date
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Revenue vs Additional Liability
    name: Revenue vs Additional Liability
    model: product_discovery_v1
    explore: mv_sales
    type: looker_line
    fields: [mv_sales.day_date, mv_sales.total_sales, mv_sales.product_total, mv_sales.liability]
    fill_fields: [mv_sales.day_date]
    sorts: [mv_sales.day_date desc]
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: Amount in $, orientation: left, series: [{axisId: mv_sales.tx_tax,
            id: mv_sales.tx_tax, name: Total Tax}, {axisId: mv_sales.tx_total, id: mv_sales.tx_total,
            name: Total Sales}, {axisId: mv_sales.product_total, id: mv_sales.product_total,
            name: Product Sold}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors: {}
    series_labels:
      mv_sales.tx_total: Total Sales
      mv_sales.product_total: Product Sold
      mv_sales.tx_tax: Total Tax
      mv_sales.liability: Liability  (Tax+Shipping+Discounts)
    defaults_version: 1
    listen:
      Time Filter: mv_sales.day_date
    row: 12
    col: 8
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.total_sales]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#079c98"
    single_value_title: Total Revenue
    value_format: "$0.00"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Time Filter: mv_sales.day_date
    row: 0
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.count, mv_sales.total_sales]
    sorts: [mv_sales.total_sales desc]
    limit: 1000
    column_limit: 50
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${mv_sales.total_sales}/${mv_sales.count}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
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
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [mv_sales.tx_total, mv_sales.count, mv_sales.total_sales]
    listen:
      Time Filter: mv_sales.day_date
    row: 0
    col: 8
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (3)
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.total_visitors]
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
    row: 6
    col: 8
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (4)
    model: product_discovery_v1
    explore: mv_sales
    type: single_value
    fields: [mv_sales.total_num_of_orders]
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
    custom_color: "#FF8168"
    single_value_title: Total Number Of Purchases
    defaults_version: 1
    listen:
      Time Filter: mv_sales.day_date
    row: 6
    col: 0
    width: 8
    height: 6
  - title: 'Sales Analysis '
    name: 'Sales Analysis '
    model: product_discovery_v1
    explore: mv_sales
    type: looker_funnel
    fields: [mv_sales.total_sales, mv_sales.product_total, mv_sales.shipping_and_discount,
      mv_sales.tax]
    limit: 500
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    isStepped: true
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
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Best Performing Products
    name: Best Performing Products
    model: product_discovery_v1
    explore: tbl_events
    type: looker_grid
    fields: [tbl_events.event_type, tbl_events__product_details.product__id, tbl_events__product_details.quantity,
      tbl_events__product_details.product__price, tbl_events__product_details.total_sales]
    filters:
      tbl_events.event_type: purchase-complete
    sorts: [tbl_events__product_details.total_sales desc]
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
    series_cell_visualizations:
      tbl_events__product_details.total_sales:
        is_active: true
    header_font_color: "#9334E6"
    header_background_color: "#12B5CB"
    defaults_version: 1
    hidden_fields: [tbl_events.event_type, tbl_events__product_details.quantity, tbl_events__product_details.product__price]
    listen:
      Time Filter: tbl_events.event_date
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
      options: []
