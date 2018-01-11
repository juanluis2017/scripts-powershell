$resourceGroup="CRM_PROD"
$storageAccountName = "sacrmprod"
$containerName = "notes-container"

Select-AzureRmSubscription -SubscriptionName EAAzureTanner


$storageAccount=Get-AzureRmStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName

$ctx = $storageAccount.Context 

$listOfBLobs = Get-AzureStorageBlob -Container $ContainerName -Context $ctx 

$length = 0

# this loops through the list of blobs and retrieves the length for each blob
#   and adds it to the total
$listOfBlobs | ForEach-Object {$length = $length + $_.Length}

# output the blobs and their sizes and the total 
Write-Host "List of Blobs and their size (length)"
Write-Host " " 
$listOfBlobs | select Name, Length
Write-Host " "
Write-Host "Total Length = " $length