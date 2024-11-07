targetScope = 'resourceGroup'

param vaultName string
param location string = resourceGroup().location

resource recoveryServicesVault 'Microsoft.RecoveryServices/vaults@2023-01-01' = {
  name: vaultName
  location: location
  properties: {
    sku: {
      name: 'Standard'
    }
    enabledFeatures: [
      'AzureBackup'
    ]
  }
}

output vaultId string = recoveryServicesVault.id
