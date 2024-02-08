## Lab 3: Using Existing Resources and Working with Child Resources

## Activity 3: Creating Child Subnets within an Existing Virtual Network

### 1. Extend the Virtual Network created in Lab 1 by adding two child subnets.

   #### Instructions
 1. Create a Bicep file named `subnets.bicep`.
 2. Utilize the `existing` keyword to reference the Virtual Network created in Lab 1.
 3. Define a new subnet named `bicepsubnet-1` with an address prefix of '10.0.0.0/24' [use the `parent` property].
 4. Define another subnet named `bicepsubnet-2` with an address prefix of '10.0.1.0/24' and specify a dependency on the existing Virtual Network [use the `dependsOn` property].
 5. Use parameters and variables wherever possible for increased flexibility.
 6. Save the changes to the `subnets.bicep` file.
 7. Output the subnetId for both `bicepsubnet-1` and `bicepsubnet-2`.

### 2. Deploy the child subnets 

#### 2.1 using the Azure CLI command:
    
 ```bash
     az deployment group create --resource-group <your-resource-group-name> --template-file subnets.bicep --parameters subnets.bicepparam
  ```
Replace `<your-resource-group-name>` with the name of your existing resource group.

OR

#### 2.2. Alternatively, deploy the child subnets using the Visual Studio Code deployment pane:
   - Open Visual Studio Code and navigate to the deployment pane (usually on the right-hand side).
   - Select the subscription and resource group.
   - Click the "Deploy to Azure" button.
   - Choose the `subnets.bicep` file for deployment.

**Rechecking or Comparison:**
- If you want to recheck or compare your solution, you can refer to the provided solutions in the solution folder. Review the README file in that folder for a step-by-step understanding of the lab's directory.

Continue to the next activities to explore more Bicep concepts.
