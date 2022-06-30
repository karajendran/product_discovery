- dashboard: most_viewed
  title: Most Viewed
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: top_50_most_viewed_products
      title: Top 50 Most Viewed Product Ids
      model: product_discovery_v1
      explore: mv_detail_page_view
      type: looker_pie
      fields: [mv_detail_page_view.prd_id, mv_detail_page_view.count]
      sorts: [mv_detail_page_view.count desc]
      limit: 50
      value_labels: legend
      label_type: labPer
      inner_radius:
      color_application:
        collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
        palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
        options:
          steps: 5
      series_colors: {}
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
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      defaults_version: 1
      series_types: {}
