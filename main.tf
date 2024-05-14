
resource "newrelic_one_dashboard" "dash1" {
  name        = var.name
  permissions = var.permissions

  page {
    name = var.dashboard.pagename

    widget_billboard {
      title  = var.dashboard.title1
      row    = var.dashboard.row1
      column = var.dashboard.column1
      width  = var.dashboard.width1
      height = var.dashboard.height1

      nrql_query {
        query = var.dashboard.query
      }
    }
  }


  dynamic "variable" {
    for_each = var.dashboard.var1
    iterator = template

    content {
      default_values = template.value.values
      name           = template.value.name

      nrql_query {
        account_ids = template.value.account_ids
        query       = template.value.query
      }
      replacement_strategy = template.value.replacement_strategy
      title                = template.value.title
      type                 = template.value.type
    }

  }
}
