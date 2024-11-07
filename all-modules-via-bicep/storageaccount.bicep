resource myStorageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'uniquestorageaccount5678'  // Update this name to something unique
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
