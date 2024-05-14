name        = "Template Var Dashboard"
permissions = "public_read_only"
dashboard = {
  pagename = "TF-dashboard"

  query   = "FROM Transaction SELECT count(*) WHERE appName={{var1}}"
  title1  = "widget1"
  row1    = 1
  column1 = 1
  width1  = 4
  height1 = 4
    
  var1 = {
    "1" = {
      values = ["Plan Service"]
      name   = "var1"


      account_ids = [411834]
      query       = "FROM Transaction SELECT uniques(appName) "

      replacement_strategy = "default"
      title                = "title"
      type                 = "nrql"
    }
    "2" = {
      values = ["Billing service"]
      name   = "var2"


      account_ids = [411834]
      query       = "FROM Transaction SELECT uniques(appName) "

      replacement_strategy = "default"
      title                = "title"
      type                 = "nrql"
    }
   
  }
}


