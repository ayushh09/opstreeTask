param location string
param nicName string
param subnetId string
param publicIPAddress string
param networkSecurityGroupID string

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


