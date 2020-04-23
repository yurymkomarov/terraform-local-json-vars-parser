terraform {
  experiments = [variable_validation]
}

variable "custom_vars" {
  type    = string
  default = ""

  description = "Path to json file with custom vars"

  validation {
    condition     = var.custom_vars != "" ? can(jsondecode(var.custom_vars)) : true
    error_message = "json parsing failed!"
  }
}
