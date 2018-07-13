
relealiza login con azure 

Login-AzureRmAccount  

Lista de todas las subscripciones de azure

Get-AzureRmSubscription

selecciona subscripcion en la cual se quiere trabajar

Select-AzureRmSubscription -SubscriptionId 293c1183-8b08-4bbd-9f28-e042fd037525


lista los grupos de recursos existentes

Get-AzureRmResourceGroup

lista todas las bases de datos asociadas a un servidor

 Get-AzureRmSqlDatabase -ServerName [nombre servidor SQL] -ResourceGroupName [resource_group]
