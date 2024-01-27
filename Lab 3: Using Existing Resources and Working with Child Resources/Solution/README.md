## Lab 3 SOLUTION: Using Existing Resources and Working with Child Resources

### Activity 3: Creating Child Subnets within an Existing Virtual Network

In this activity, you will enhance your Bicep skills by creating a Bicep file to extend an existing Virtual Network from Lab 1 and add two child subnets.

### Steps

1. **Create `subnets.bicep` File:**
   - Create a new Bicep file named `subnets.bicep`.

2. **Reference Existing Virtual Network:**
   - Utilize the `existing` keyword to reference the Virtual Network created in Lab 1.

3. **Define Subnets:**
   - Define a new subnet named `bicepsubnet-1` with an address prefix of '10.0.0.0/24' [use the `parent` property].
   - Define another subnet named `bicepsubnet-2` with an address prefix of '10.0.1.0/24' and specify a dependency on the existing Virtual Network [use the `dependsOn` property].

4. **Parameterize and Variablize:**
   - Parameterize and Variablize the necessary values for improved code flexibility.
   - Consider parameterizing the Virtual Network name, subnet names, and address prefixes.

5. **Save the Bicep File:**
   - Save the changes to the `subnets.bicep` file.
   - 
5. **Generate Parameter File from Bicep File in VS Code:**
   - Create `subnets.bicepparam` and add the dynamic(run time) values in that file.

6. **Deploy the Child Subnets:**
   - Deploy the Public IP using the Azure CLI command below:
     ```bash
     az deployment group create --resource-group <resource group name> --template-file subnets.bicep --parameters subnets.bicepparam
     ```
     Replace `<resource group name>` with the name of your existing resource group.
   - Alternatively, use the deployment pane on the right-hand side of Visual Studio Code. Select the correct resource group and parameters file.


### Verify Deployment

- Check the Azure Portal to ensure that the Public IP address is created in the specified region.

### Additional Notes

- **Lab Objective:**
  - This activity aims to demonstrate parameterization and variablization in Bicep by deploying a Public IP address.

- **Code Enhancement:**
  - Unlike the previous lab, introduce parameterization and variablization to enhance code flexibility and reusability.

- **Customization:**
  - Feel free to customize the file names, resource names, and additional settings based on your preferences or specific learning objectives.

---

Continue to the next activities to explore more Bicep deployment concepts.
