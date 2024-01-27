# Lab 2 SOLUTION: Parameterize and Variablize Bicep Files

## Activity 2: Deploying a Public IP with Parameterization and Variablization

In this activity, you will enhance your Bicep skills by creating a Bicep file to deploy a Public IP address with improved code reusability using parameterization and variablization.

### Steps

1. **Create `publicip.bicep` File:**
   - Create a new Bicep file named `publicip.bicep`.

2. **Add Bicep Configuration:**
   - Include the Bicep configuration for the Public IP resource in the `publicip.bicep` file.

3. **Parameterize and Variablize:**
   - Explore parameterization and variablization concepts by introducing parameters and variables into your Bicep code. Consider parameterizing key values for improved flexibility. For a refresher on these concepts, refer to the supporting documentation in the Bicep Concepts Folder.

4. **Save the Bicep File:**
   - Save the changes to the `publicip.bicep` file.

5. **Generate Parameter File from Bicep File in VS Code:**
   - Create `publicip.bicepparam` and add the dynamic(run time) values in that file.

6. **Deploy the Public IP:**
   - Deploy the Public IP using the Azure CLI command below:
     ```bash
     az deployment group create --resource-group <resource group name> --template-file publicip.bicep --parameters publicip.bicepparam
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
