- dashboard: finance_dashboard
  title: Finance Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  embed_style:
    show_title: false
    show_filters_bar: false
  elements:
  - title: Retail Sales
    name: Retail Sales
    # model: looker_demo
    explore: order_items
    type: looker_column
    fields: [products.brand, order_items.total_profit]
    sorts: [order_items.total_profit desc]
    limit: 10
    total: true
    dynamic_fields: [{table_calculation: market_share, label: Market Share, expression: "${order_items.total_profit}/${order_items.total_profit:total}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
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
    series_types: {}
    value_labels: labels
    label_type: labVal
    defaults_version: 1
    hidden_fields: [order_items.total_profit]
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
  - title: Total Profit
    name: Total Profit
    # model: looker_demo
    explore: order_items
    type: looker_column
    fields: [products.brand, order_items.total_profit]
    sorts: [order_items.total_profit desc 0]
    limit: 10
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
    listen: {}
    row:
    col:
    width:
    height:
