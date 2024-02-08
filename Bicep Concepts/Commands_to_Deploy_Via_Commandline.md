## Scopes

1) Resource group
2) Subscription
3) Management group
4) Tenant

### ******** Resource group ********

## AZCLI
az deployment group create 
 
  --name `demoRGDeployment ` 
 
 --resource-group `ExampleGroup`
 
 --template-file `main.bicep `
 
 --parameters storageAccountType=`Standard_GRS`

## Powershell
New-AzResourceGroupDeployment 
 
  -Name `demoRGDeployment `
 
 -ResourceGroupName `ExampleGroup `
 
  -TemplateFile `main.bicep `
 
 -storageAccountType `Standard_GRS `

### ******** Subscription ********

## AZCLI
az deployment sub create 
  
  --name `demoSubDeployment` 
 
  --location `centralus` 
 
  --template-file `main.bicep` 
  
  --parameters `rgName=demoResourceGroup` `rgLocation=centralus`

## Powershell
New-AzSubscriptionDeployment 
 
  -Name `demoSubDeployment `
  
  -Location `centralus` 
  
  -TemplateFile `main.bicep `
  
  -rgName `demoResourceGroup `
  
  -rgLocation `centralus`

### ******** Management Group ********

## AZCLI
az deployment mg create 
 
  --name `demoMGDeployment` 

  --location `WestUS` 

  --management-group-id `myMG` 

  --template-uri 
  ```shell
  https://raw.githubusercontent.com/Azure/azure-docs-json-samples/master/management-level-deployment/azuredeploy.json
  ```
## Powershell
New-AzManagementGroupDeployment 

  -Name `demoMGDeployment `

  -Location `West US `

  -ManagementGroupId `myMG `

  -TemplateUri 
  ```shell
  https://raw.githubusercontent.com/Azure/azure-docs-json-samples/master/management-level-deployment/azuredeploy.json
  ```


### ******** Tenant ********

## AZCLI
az deployment tenant create 

  --name `demoTenantDeployment`

  --location `WestUS`

  --template-file `main.bicep`

## Powershell
New-AzTenantDeployment 
 
  -Name `demoTenantDeployment `
  
  -Location `West US`
  
  -TemplateFile `main.bicep`
