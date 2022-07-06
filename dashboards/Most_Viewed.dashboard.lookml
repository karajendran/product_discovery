- dashboard: most_viewed_products
  title: Most Searched Products
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
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
