- dashboard: retail_dashboard
  title: Retail Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: SoNwP7PMJhxcx0AlfbVuOe
  elements:
  - title: Month over Month Revenue
    name: Month over Month Revenue
    # model: looker_demo
    explore: order_items
    type: looker_column
    fields: [order_items.created_month, order_items.total_revenue]
    fill_fields: [order_items.created_month]
    filters:
      order_items.created_month: 12 months
    sorts: [order_items.created_month desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${order_items.total_revenue}/offset(${order_items.total_revenue},1)-1",
        label: "% Change", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: change, _type_hint: number}]
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [order_items.total_revenue]
    listen:
      City: users.city
    row: 0
    col: 0
    width: 11
    height: 8
  - title: Histogram
    name: Histogram
    # model: looker_demo
    explore: order_items
    type: marketplace_viz_histogram::histogram-marketplace
    fields: [users.age, users.count, products.count]
    sorts: [users.count desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    bin_type: steps
    bin_style: binned_hist
    color_scheme: ["#1A73E8", "#12B5CB", "#E8710A", "#F9AB00", "#9334E6", "#80868B",
      "#A8A116", "#EA4335", "#FF8168", "#079c98"]
    heatmap_opacity: 0.5
    point_opacity: 0.5
    step_size: 5
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
    defaults_version: 0
    series_types: {}
    listen:
      City: users.city
    row: 8
    col: 0
    width: 11
    height: 7
  - title: Product Category by % Profit
    name: Product Category by % Profit
    # model: looker_demo
    explore: order_items
    type: looker_pie
    fields: [products.category, order_items.total_profit]
    sorts: [order_items.total_profit desc 0]
    limit: 10
    total: true
    dynamic_fields: [{category: table_calculation, expression: "${order_items.total_profit}/${order_items.total_profit:total}",
        label: "% Total", value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        table_calculation: total, _type_hint: number}]
    value_labels: labels
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
    hidden_fields: [order_items.total_profit]
    series_types: {}
    listen:
      City: users.city
    row: 0
    col: 11
    width: 13
    height: 8
  - title: New Tile
    name: New Tile
    # model: looker_demo
    explore: order_items
    type: looker_google_map
    fields: [order_items.total_revenue, users.state]
    filters:
      order_items.created_month: 12 months
    sorts: [order_items.total_revenue desc 0]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${order_items.total_revenue}/offset(${order_items.total_revenue},1)-1",
        label: "% Change", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: change, _type_hint: number}]
    hidden_fields: [change]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    map_value_colors: [green, gray, blue]
    quantize_map_value_colors: false
    reverse_map_value_colors: true
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
    show_null_points: true
    interpolation: linear
    defaults_version: 0
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
    title_hidden: true
    listen:
      City: users.city
    row: 8
    col: 11
    width: 13
    height: 7
  filters:
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    # model: looker_demo
    explore: order_items
    listens_to_filters: []
    field: users.city
