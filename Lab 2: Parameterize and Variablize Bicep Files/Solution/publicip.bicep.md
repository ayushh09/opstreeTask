// Define parameters for dynamic values
@description('Enter the location where the Public IP resource should be created')
```shell
param location string = resourceGroup().location
```
@description('Enter the Public IP resource name')
```shell
param publicIpName string = 'mfirstpublicip'
```
@description('Enter the Public IP allocation method')
@allowed(['Static','Dynamic'])
```shell
param publicIpAllocationMethod string = 'Static'
```
// Define variables for static values or calculated values
```shell
var domainNameLabel = '${publicIpName}dns'
```
// Resource block for Public IP Address
```shell
resource publicIPAddress 'Microsoft.Network/publicIPAddresses@2019-11-01' = {
  name: publicIpName
  location: location
  properties: {
    publicIPAllocationMethod: publicIpAllocationMethod
    dnsSettings: {
      domainNameLabel: domainNameLabel
    }
  }
}
```

// Output block to expose values for reference
```shell
output publicIPAddressID string = publicIPAddress.id
```
