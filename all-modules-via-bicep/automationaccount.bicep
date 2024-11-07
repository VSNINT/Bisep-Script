targetScope = 'resourceGroup'

param automationAccountName string
param location string = resourceGroup().location

resource automationAccount 'Microsoft.Automation/automationAccounts@2021-04-01' = {
  name: automationAccountName
  location: location
  properties: {
    sku: {
      name: 'Basic'
    }
  }
}
