param vaultName string

resource recoveryVault 'Microsoft.RecoveryServices/vaults@2021-08-01' = {
  name: vaultName
  location: resourceGroup().location
  sku: {
    name: 'RS0' // or 'Standard'
  }
  properties: {}
}
