

//Scope at which resource will be deployed in Azure Hierarchy
```shell
targetScope = '<scope>'
```
// Parameters (optional)
@<decorator>(<argument>)
```shell
param <parameter-name> <parameter-data-type> = <default-value>
```
// Variables (optional)
```shell
var <variable-name> = <variable-value>
```
// Resources (required)
```shell
resource <resource-symbolic-name> '<resource-type>@<api-version>' = {
  <resource-properties>
}
```


// Module (optional)
```shell
module <module-symbolic-name> '<path-to-file>' = {
  name: '<linked-deployment-name>'
  params: {
    <parameter-names-and-values>
  }
}
```

// Output (optional)
```shell
output <output-name> <output-data-type> = <output-value></output-value>
```
