// The target scope determines where the resource or module is provisioned within the Azure hierarchy.

// The scope at which a resource or module is deployed. 
```shell
targetScope = 'subscription'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'biceprg'
  location: 'Central India'
}
```
