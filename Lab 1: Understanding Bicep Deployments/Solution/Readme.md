# Lab 1 SOLUTION: Understanding Bicep Deployments

## Activity 1: Deploying a Virtual Network without Subnet

In this activity, you will create a simple Bicep file to deploy a Virtual Network without a subnet.

### Steps

1. **Create `vnet.bicep` File:**
   - Create a file named `vnet.bicep`.

2. **Add Bicep Configuration:**
   - Add the Bicep configuration for the Virtual Network resource in the `vnet.bicep` file.

3. **Modify VNet Name and Address Prefixes:**
   - If required, change the Virtual Network name and address prefixes in the Bicep configuration.

4. **Save the Bicep File:**
   - Save the changes to the `vnet.bicep` file.

5. **Create Deployment:**
   - Execute the following Azure CLI command to create the deployment:
     ```bash
     az deployment group create --resource-group <resource group name> --template-file <path>/vnet.bicep
     ```
     This command compiles the Bicep code into ARM template JSON (`vnet.json`) and deploys it to the Azure resource group.

### Verify Deployment

- Check the Azure Portal to ensure that the virtual network is created in the specified region (centralindia).

### Additional Notes

- **Lab Objective:**
  - This lab provides a simple example of deploying a virtual network using Bicep.

- **Code Simplicity:**
  - The Bicep code is intentionally not parameterized or variablized for simplicity in this introductory lab.

- **Customization:**
  - Feel free to adjust the file names, resource names, and additional settings based on your preferences or the specific learning objectives of the lab.

---

Continue to the next activities to explore more Bicep deployment concepts.
