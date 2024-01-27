## Lab 4 SOLUTION: Modularizing Resources using Bicep Modules

### Activity 4: Creating Modules for Azure Resources

In this activity, you will leverage Bicep modules to deploy a Network Interface with associated resources such as Virtual Network, Public IP, Subnets, and Network Security Group.

### Steps

1. **Use the existing Bicep Files:**
   - Use the necessary Bicep files (`vnet.bicep`, `publicip.bicep`, `vnetchildparent.bicep`, `nsg.bicep`, `nic.bicep`) to define resources and configurations.

2. **Deploy Resources using Modules:**
   - Utilize Bicep modules to organize and deploy resources.
   - Reference the created modules in the main Bicep file (`main.bicep` or any other appropriate name).

3. **Parameterize and Configure:**
   - Leverage parameters for dynamic values, enhancing flexibility.
   - Ensure parameters are appropriately configured, such as `nicName`, `location`, `subnetId`, `publicIPAddress`, and `networkSecurityGroupID`.

4. **Deploy the Solution:**
   - Use the Azure CLI command or Visual Studio Code deployment pane to deploy the entire solution.
     ```bash
     az deployment group create --resource-group <your-resource-group-name> --template-file main.bicep
     ```
     Replace `<your-resource-group-name>` with your existing resource group.
   - Alternatively, use the deployment pane on the right-hand side of Visual Studio Code. Select the correct resource group and parameters file.

5. **Verification:**
   - Confirm the deployment's success by checking the Azure Portal and ensuring the Network Interface, along with associated resources, is created.

### Additional Notes

- **Lab Objective:**
  - This activity demonstrates the use of Bicep modules to deploy a Network Interface along with related resources.

- **Code Structure:**
  - The solution is organized into modules for better code organization, reusability, and maintainability.

- **Customization:**
  - Feel free to customize resource names, file names, or other settings to suit your preferences or specific learning objectives.

---

Now click on Bicep Visualizer tab on the right-hand side of Visual Studio Code to check what resources are created and how it is linked.

Congratulations! You have completed the final activity in this lab series. You've gained valuable insights into modularizing Bicep deployments for complex scenarios.
If you need further assistance or want to revisit concepts, refer to the provided solutions in the solution folder. Review the README file for a comprehensive understanding of the lab's directory.
