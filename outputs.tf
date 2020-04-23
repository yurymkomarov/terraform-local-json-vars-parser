output "results" {
  value = merge(
    local.default_vars,
    local.workspace_vars,
    local.custom_vars
  )
}
