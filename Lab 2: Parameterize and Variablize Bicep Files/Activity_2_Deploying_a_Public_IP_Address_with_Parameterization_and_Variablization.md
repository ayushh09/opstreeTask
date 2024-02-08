## Activity 2: Deploying a Public IP Address with Parameterization and Variablization

### 1. Deploy a Public IP address with parameterization and variablization in an already created resource group.

   #### Instructions
     
   1. Create a Bicep file named `publicip.bicep`.
   2. Parameterize the following values:
         - Location: Use the existing resource group's location.
         - Public IP Name: Set a default value (e.g., 'mfirstpublicip') but allow customization.
         - Public IP Allocation Method: Choose between 'Static' and 'Dynamic'.
   3. Use a variable to generate a domainNameLabel based on the Public IP Name.
   4. Define a resource block for the Public IP Address in the Bicep file.
   5. Save the changes to the `publicip.bicep` file.
   6. Output the `publicIPAddressID`.

### 2. Deploy the Public IP Resource. 
#### 2.1 using the Azure CLI command:
    
 ```shell
     az deployment group create --resource-group <your-resource-group-name> --template-file publicip.bicep --parameters <parameter-file-name>.bicepparam
 ```
Replace `<your-resource-group-name>` with the name of your existing resource group.
                                          
OR

   ####  2.2. Alternatively, deploy the child subnets using the Visual Studio Code deployment pane:
   - Open Visual Studio Code and navigate to the deployment pane (usually on the right-hand side).
   - Select the subscription and resource group.
   - Click the "Deploy to Azure" button.
   - Choose the `publicip.bicep` file for deployment.
   - Choose the `publicip.bicepparam` file for parameters deployment.

**Rechecking or Comparison:**
- If you want to recheck or compare your solution, you can refer to the provided solutions in the solution folder. Review the README file in that folder for a step-by-step understanding of the lab's directory.

Continue to the next activities to explore more Bicep concepts.
