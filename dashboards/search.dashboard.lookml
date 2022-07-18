- dashboard: search
  title: Search
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 hour
  preferred_slug: dbeazc51mJg32EkiT5mfiu
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
    row: 18
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
    row: 18
    col: 8
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
    header_font_size: '14'
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
    header_font_color: "#9334E6"
    header_background_color: "#12B5CB"
    defaults_version: 1
    refresh: 1 hour
    listen:
      Time Filter: mv_detail_page_view.day_date
    row: 0
    col: 8
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
    row: 12
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
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Top Searched Products
    name: Top Searched Products
    model: product_discovery_v1
    explore: mv_search
    type: looker_grid
    fields: [mv_search__results.mv_search__results, mv_search.count]
    sorts: [mv_search.count desc]
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
    truncate_header: false
    series_labels:
      mv_search__results.mv_search__results: Product ID
      mv_search.count: Search Count
    series_column_widths: {}
    series_cell_visualizations:
      mv_search.count:
        is_active: true
        palette:
          palette_id: 4620e8de-df7a-40e0-89d6-7401f6e64d96
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    header_font_color: "#9334E6"
    header_background_color: "#12B5CB"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
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
    refresh: 1 hour
    listen:
      Time Filter: mv_search.day_date
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Most Searched Keywords
    name: Most Searched Keywords
    model: product_discovery_v1
    explore: mv_search
    type: looker_grid
    fields: [mv_search.query, mv_search.count]
    sorts: [mv_search.count desc]
    limit: 500
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
    refresh: 1 hour
    listen:
      Time Filter: mv_search.day_date
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Products Shown in Search Result
    name: Products Shown in Search Result
    model: product_discovery_v1
    explore: mv_search
    type: looker_grid
    fields: [mv_search__results.mv_search__results, mv_search.count]
    sorts: [mv_search.count desc]
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
    refresh: 1 hour
    listen:
      Time Filter: mv_search.day_date
    row: 6
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
