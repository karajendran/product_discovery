- dashboard: product_discovery_dashboards
  title: Product Discovery Dashboards
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:

    - name: top_50_products_shown_in_search_result
      title: Top 50 Product Names Showed in Search Result
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


    - name: top_50_most_viewed_products
      title: Top 50 Most Viewed Product Names
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


    - name: abandonment_rate
      title: Abandonment Rate
      model: product_discovery_v1
      explore: abandonment_rate
      type: looker_single_record
      fields: [abandonment_rate.total_sessions, abandonment_rate.added, abandonment_rate.abandoned,
        abandonment_rate.converted]
      sorts: [abandonment_rate.total_sessions]
      limit: 500
      show_view_names: false
      defaults_version: 1
