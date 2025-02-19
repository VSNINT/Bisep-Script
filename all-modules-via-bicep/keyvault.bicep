targetScope = 'resourceGroup'

param keyVaultName string
param location string = resourceGroup().location
param skuName string = 'standard' // Options: 'standard' or 'premium'

resource keyVault 'Microsoft.KeyVault/vaults@2021-06-01-preview' = {
  name: keyVaultName
  location: location
  properties: {
    sku: {
      family: 'A'
      name: skuName
    }
    tenantId: subscription().tenantId
    accessPolicies: []
  }
}
