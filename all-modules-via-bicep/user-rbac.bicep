targetScope = 'subscription'

param userObjectId string

resource userRoleAssignment 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(subscription().id, userObjectId, 'acdd72a7-3385-48ef-bd42-f606fba81ae7')
  properties: {
    principalId: userObjectId
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', 'acdd72a7-3385-48ef-bd42-f606fba81ae7')
  }
}
