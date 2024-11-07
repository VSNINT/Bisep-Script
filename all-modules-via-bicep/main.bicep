resource myStorageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'mystorageacct123'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}
