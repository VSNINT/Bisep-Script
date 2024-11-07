targetScope = 'subscription'

param workspaceName string
param location string = 'CentralIndia'

resource logAnalyticsWorkspace 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: workspaceName
  location: location
  properties: {
    sku: {
      name: 'PerGB2018'
    }
    retentionInDays: 30
  }
}

output workspaceId string = logAnalyticsWorkspace.id
output workspaceKey string = listKeys(logAnalyticsWorkspace.id, '2023-09-01').primarySharedKey
