# Include a comment here
include: "/views/**/*.view"
include: "/dashboards/*.dashboard.lookml"


explore: bq_tables {}

explore: users {
  always_filter: {
    filters: [bq_tables_parameter: "" ]
  }
}

explore: order_items {

  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}


# explore: events {}
# explore: users {}
# explore: distribution_centers {}

test: historic_revenue_is_accurate {
  explore_source: order_items {
    column: total_revenue { field: order_items.total_revenue }
    filters: [order_items.created_year: "2021"]
  }
  assert: revenue_is_expected_value {
    expression: round(${order_items.total_revenue},2) = 115018.89 ;;
  }
}
