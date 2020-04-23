locals {
  default_vars   = try(jsondecode(file("${path.root}/vars/default.json")), {})
  workspace_vars = try(jsondecode(file("${path.root}/vars/${terraform.workspace}.json")), {})
  custom_vars    = try(jsondecode(var.custom_vars), {})
}
