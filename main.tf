
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

  variable {
      default_values = var.var1.default_values
      name           = var.var1.name

      nrql_query {
        account_ids = var.var1.account_ids
        query       = var.var1.query
      }
      replacement_strategy = var.var1.replacement_strategy
      title                = var.var1.title
      type                 = var.var1.type
    
  } 
}
