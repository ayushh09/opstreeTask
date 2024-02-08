
```shell
//Scope at which resource will be deployed in Azure Hierarchy
targetScope = '<scope>'

// Parameters (optional)
@<decorator>(<argument>)
param <parameter-name> <parameter-data-type> = <default-value>

// Variables (optional)
var <variable-name> = <variable-value>

// Resources (required)
resource <resource-symbolic-name> '<resource-type>@<api-version>' = {
  <resource-properties>
}
```

// Module (optional)
module <module-symbolic-name> '<path-to-file>' = {
  name: '<linked-deployment-name>'
  params: {
    <parameter-names-and-values>
  }
}

// Output (optional)
output <output-name> <output-data-type> = <output-value></output-value>
