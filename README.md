# JSON vars parser

This module can parse JSON files with vars

## Example of usage

For example: you have JSON file with global vars and component specific vars. Files and folders should have this structure:
```bash
.
├── component
│   ├── vars
│   │   ├── default.json
│   │   ├── dev.json
│   │   └── prod.json
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
└── vars.json
```

Your module call will look like this:
```hcl-terraform
module "json_vars_parser" {
  source = "yurymkomarov/terraform-local-json-vars-parser"

  custom_vars = file("${path.root}/../vars.json")
}
```

After this you can have access to all variables from JSON files as `module.json_vars_parser.results["${var_name}"]`
