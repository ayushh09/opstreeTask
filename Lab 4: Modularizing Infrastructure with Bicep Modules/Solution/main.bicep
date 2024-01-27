param resourceGroupName string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' existing = {
  name: resourceGroupName
  scope: subscription()
}

module vnet './vnet.bicep' = {
  name: 'vnetModule'
}

module publicip './publicip.bicep' = {
  name: 'publicIpModule'
  params: {
    location: resourceGroup.location
  }
}

module subnets './vnetchildparent.bicep' = {
  name: 'subnetsModule'
}

module nsg './nsg.bicep' = {
  name: 'nsgmodule'
}

resource networkInterface 'Microsoft.Network/networkInterfaces@2020-11-01' = {
  name: 'mynic'
  location: 'Central India'
  properties: {
    ipConfigurations: [
      {
        name: 'myipconfig'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: subnets.outputs.subnet2Id 
          }
          publicIPAddress: {
            id: publicip.outputs.publicIPAddressID
          }
        }
      }
    ]
    networkSecurityGroup: {
      id: nsg.outputs.nsgId
    }
  }
  dependsOn: [
    nsg
    publicip
    subnets
  ]
}


