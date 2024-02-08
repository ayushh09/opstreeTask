## Activity 1: Deploying a Virtual Network without Subnet

### 1. Create a virtual network without subnets in an already created resource group.

   #### Instructions
   - Bicep file name should be `vnet.bicep`

### 2. Deploy the virtualnetwork using az cli command.
   - Use the following Azure CLI command to deploy the virtual network using the Bicep file:
     ```bash
     az deployment group create --resource-group <your-resource-group-name> --template-file vnet.bicep
     ```
     Replace `<your-resource-group-name>` with the name of your existing resource group.

**Rechecking or Comparison:**
- If you want to recheck or compare your solution, you can refer to the provided solutions in solution folder and go through the readme in that folder for understaning the steps in this lab's directory.

Continue to the next activities to explore more Bicep deployment concepts.
