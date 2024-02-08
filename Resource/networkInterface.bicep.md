// Parameters for dynamic values
@description('Location for the Network Interface')
```shell
param location string
```
@description('Name for the Network Interface')
```shell
param nicName string
```
@description('Subnet ID for the Network Interface')
```shell
param subnetId string
```
@description('Public IP Address ID for the Network Interface')
```shell
param publicIPAddress string
```
@description('Network Security Group ID for the Network Interface')
```shell
param networkSecurityGroupID string
```
// Resource: Network Interface
```shell
resource networkInterface 'Microsoft.Network/networkInterfaces@2020-11-01' = {
  name: nicName
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'myipconfig'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: subnetId
          }
          publicIPAddress: {
            id: publicIPAddress
          }
        }
      }
    ]
    networkSecurityGroup: {
      id: networkSecurityGroupID
    }
  }
}
```
