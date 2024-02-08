## Lab 4: Modularizing Resources using Bicep Modules

## Activity 4: Creating Modules for Azure Resources

### 1. Modularize the Azure resources created in previous labs using Bicep modules.

   #### Instructions

   1. Create a Bicep file named main.bicep which can create following resources:
         - Virtual Network (vnet.bicep)
         - Public IP Address (publicip.bicep)
         - Subnets (subnets.bicep)
         - Network Security Group (nsg.bicep)
         - Network Interface (nic.bicep)[From resources folder]
   2. Make sure to use the `existing` keyword wherever applicable.
   3. Add the parameters and variables in module.
   4. Save the changes to main Bicep file.


### 2. Deploy the modularized resources

#### 2.1 using the Azure CLI command:
```bash
     az deployment group create --resource-group <your-resource-group-name> --template-file main.bicep --parameters main.bicepparam
```

Replace `<your-resource-group-name>` with the name of your existing resource group.
                                        
 OR

#### 2.2. Alternatively, deploy the modularized resources using the Visual Studio Code deployment pane:
   - Open Visual Studio Code and navigate to the deployment pane (usually on the right-hand side).
   - Select the subscription and resource group.
   - Click the "Deploy to Azure" button.
   - Choose the `main.bicep` file for deployment.

**Rechecking or Comparison:**
- If you want to recheck or compare your solution, you can refer to the provided solutions in the solution folder. Review the README file in that folder for a step-by-step understanding of the lab's directory.

Feel free to customize the activity based on your specific objectives or preferences.

