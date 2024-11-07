targetScope = 'resourceGroup'

param dnsZoneName string
param location string = 'global'

resource dnsZone 'Microsoft.Network/dnsZones@2018-05-01' = {
  name: dnsZoneName
  location: location
}

output dnsZoneId string = dnsZone.id
