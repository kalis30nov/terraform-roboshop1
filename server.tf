module "database_servers" {

  for_each = var.database_servers

  source         = "./module"
  component_name = each.value["name"]
  env            = var.env
  instance_type  = each.value["instance_type"]
  component_password   = lookup(each.value, "password", "null")
}


module "app_servers" {

  for_each = var.app_servers

  source         = "./module"
  component_name = each.value["name"]
  env            = var.env
  instance_type  = each.value["instance_type"]
  component_password   = lookup(each.value, "password", "null")
}
