// Define the default NIC name
```shell
param nicName string = 'mynic'
```
// Define the existing resource group
```shell
resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' existing = {
  name: 'biceprg'
  scope: subscription() // Scoping the resource group to the subscription
}
```
// Include the Virtual Network module
```shell
module vnet './vnet.bicep' = {
  name: 'vnetModule'
}
```
// Include the Public IP module
```shell
module publicip './publicip.bicep' = {
  name: 'publicIpModule'
  params: {
    location: resourceGroup.location // Pass the location of the resource group to the module
  }
}
```
// Include the Subnets module
```shell
module subnets './subnets.bicep' = {
  name: 'subnetsModule'
}
```
// Include the Network Security Group module
```shell
module nsg './networksecuritygroup.bicep' = {
  name: 'nsgmodule'
}
```
// Include the NIC (Network Interface) module
```shell
module nic './networkInterface.bicep' = {
  name: 'nicemodule'
  params: {
    nicName: nicName // Pass the NIC name parameter to the module
    location: resourceGroup.location // Pass the location of the resource group to the module
    subnetId: subnets.outputs.subnet2Id // Use the output from the Subnets module for subnetId
    publicIPAddress: publicip.outputs.publicIPAddressID // Use the output from the Public IP module for publicIPAddress
    networkSecurityGroupID: nsg.outputs.nsgId // Use the output from the NSG module for networkSecurityGroupID
  }
}
```
