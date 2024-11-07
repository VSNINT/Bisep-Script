param location string = resourceGroup().location

resource myResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'myBicepresourceGroup123'
  location: centralindia
}

output resourceGroupId string = myResourceGroup.id
