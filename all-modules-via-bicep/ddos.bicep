targetScope = 'resourceGroup'

param ddosProtectionPlanName string
param location string = resourceGroup().location

resource ddosProtectionPlan 'Microsoft.Network/ddosProtectionPlans@2020-11-01' = {
  name: ddosProtectionPlanName
  location: location
  properties: {}
}

output ddosProtectionPlanId string = ddosProtectionPlan.id
