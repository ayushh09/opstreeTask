```shell
resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'myfirstvnet'
  location: resourceGroup().location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
  }
}
```
