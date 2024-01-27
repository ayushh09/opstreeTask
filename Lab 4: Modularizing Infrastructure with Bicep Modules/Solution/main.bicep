param nicName string = 'mynic'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' existing = {
  name: 'biceprg'
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

module subnets './subnets.bicep' = {
  name: 'subnetsModule'
}

module nsg './networksecuritygroup.bicep' = {
  name: 'nsgmodule'
}

module nic './networkInterface.bicep' = {
  name: 'nicemodule'
  params: {
    nicName: nicName
    location: resourceGroup.location
    subnetId: subnets.outputs.subnet2Id
    publicIPAddress: publicip.outputs.publicIPAddressID
    networkSecurityGroupID: nsg.outputs.nsgId
  }
}
