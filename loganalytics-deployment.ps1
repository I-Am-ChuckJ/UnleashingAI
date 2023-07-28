# Select your subscription
Set-AzContext -Subscription "<your sub here>"

# Set the resource group name and location
$resourceGroupName = "<your rsg name here>"
$location = "East US"

# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Set the workspace name and SKU
$workspaceName = "publicMediumGenAIExample"
$sku = "pergb2018"

# Create the Log Analytics workspace
New-AzOperationalInsightsWorkspace -Location $location -Name $workspaceName -Sku $sku -ResourceGroupName $resourceGroupName
