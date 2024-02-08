// Define parameters for dynamic values
@description('Enter the existing Virtual Network name')
```shell
param existingVirtualNetworkName string = 'myfirstvnet'
```
@description('Enter the first subnet name')
```shell
param subnet1Name string = 'bicepsubnet-1'
```
@description('Enter the second subnet name')
```shell
param subnet2Name string = 'bicepsubnet-2'
```
@description('Enter the first subnet address prefix')
```shell
param subnet1AddressPrefix string = '10.0.0.0/24'
```

@description('Enter the second subnet address prefix')
```shell
param subnet2AddressPrefix string = '10.0.1.0/24'
```
// Define variables for static values or calculated values
```shell
var virtualNetworkName = existingVirtualNetworkName
var subnet2FullName = '${existingVirtualNetworkName}/${subnet2Name}'
```
// Resource block for Virtual Network
```shell
resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' existing = {
  name: virtualNetworkName
}
```
// Resource block for Subnet 1
```shell
resource subnet1 'Microsoft.Network/virtualNetworks/subnets@2023-06-01' = {
    name: subnet1Name
    properties: {
      addressPrefix: subnet1AddressPrefix
    }
  parent: virtualNetwork
}
```

// Resource block for Subnet 2
```shell
resource subnet2 'Microsoft.Network/virtualNetworks/subnets@2023-06-01' = {
  name: subnet2FullName
  properties: {
    addressPrefix: subnet2AddressPrefix
  }
  dependsOn: [
    virtualNetwork
  ]
}
```

// Output block to expose values for reference
```shell
output subnet1Id string = subnet1.id
output subnet2Id string = subnet2.id
```
