- dashboard: abandonment_rate
  title: Abandonment Rate
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
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
