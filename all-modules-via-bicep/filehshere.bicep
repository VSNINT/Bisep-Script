targetScope = 'resourceGroup'

param storageAccountName string
param fileShareName string
param location string = resourceGroup().location
param skuName string = 'Standard_LRS' // Choose the SKU for the storage account

// Define the Storage Account
resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: skuName
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

// Define the File Share within the Storage Account
resource fileShare 'Microsoft.Storage/storageAccounts/fileServices/shares@2022-09-01' = {
  name: '${storageAccount.name}/default/${fileShareName}'
  parent: storageAccount
  properties: {}
}

output storageAccountId string = storageAccount.id
output fileShareId string = fileShare.id
