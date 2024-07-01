# Deploy Copilot for Security

## Automated Deployment
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAntoPorter%2FCopilotForSecurity%2Fmain%2FTemplateSpec%2Fazuredeploy.json)

## Manual Deployment (via Template Spec)

### Create a Template Spec
1. **Login to Azure Portal**: If you haven't already, sign in to the [Azure Portal](https://portal.azure.com/).
2. **Search for Template Spec**: In the portal, use the search bar to look for "Template specs."
3. **Create New Template Spec**:
   - Click on "Create Template Spec."
   - Choose the template version and click on "Edit Template."
4. **Build the Basics and Set a Version Number**:
   - Provide the necessary information for the template creation.
   - Ensure you set a meaningful version number for tracking changes.
6. **In Edit Template, Paste Code Below, Changing the Default Value to requirements**:
   - Customize your template spec by adding the necessary resources and configurations.
   - In the template editor, paste your ARM template code.
   - Modify any default values as needed to match your requirements.
7. **Click Save**: Save your changes to the template spec.
8. **Tag your Template**: Add relevant tags to your template spec for better organization and searchability.
9. **Review + Create**:
   - Double-check your settings and details.
   - Finally, create the template spec.

### Deploy a Template Spec
1. **Login to Azure Portal**: If you haven't already, sign in to the [Azure Portal](https://portal.azure.com/).
2. **Search for Template Spec**: In the portal, use the search bar to look for "Template specs."
3. **Select your Template Spec File**: Click on the Template you recently created.
4. **Deploy Template Spec**:
   - Select 'Deploy'
   - Confirm the Template Details
   - Select 'Review + Create'
   - Click 'Create'

### Change the Default Values:
- capacityName
  - This name must be unique and contain only lowercase letters and numbers with no spaces.
- location
  - Needs to Reference the Geo Region
     - ANZ - australiaeast
     - US - eastus
     - EU - westeurope
     - UK - uksouth
- numberOfUnits
  - Security compute units provide the computing power that drives the Security Copilot experience (USD 4 per unit).
  - Numeric Value of the amount of SCU to provision
- crossGeoCompute
  - If this location is busy, allow Copilot to evaluate prompts anywhere in the world (recommended for optimal performance)
  - Allowed Values: "Allowed", "NotAllowed"
- geo
  - This selection will affect where your prompts are evaluated and how your usage is priced.
  - Allowed Values: "ANZ", "US", "UK", "EU"

```
{
    "$schema": "http://schema.management.azure.com/schemas/2014-04-01-preview/deploymentTemplate.json",
    "contentVersion": "1.0.0.0",
    "parameters": {
        "capacityName": {
            "type": "string",
            "defaultValue": "copilotcompute"
        },
        "location": {
            "type": "string",
            "defaultValue": "australiaeast",
            "allowedValues": [
                "australiaeast",
                "eastus",
                "westeurope",
                "uksouth"
            ]
        },
        "numberOfUnits": {
            "type": "int",
            "defaultValue": 1
        },
        "crossGeoCompute": {
            "type": "string",
            "defaultValue": "NotAllowed",
            "allowedValues": [
                "NotAllowed",
                "Allowed"
            ]
        },
        "geo": {
            "type": "string",
            "defaultValue": "ANZ",
            "allowedValues": [
                "ANZ",
                "US",
                "UK",
                "EU"
            ]
        }
    },
    "resources": [
        {
            "apiVersion": "2023-12-01-preview",
            "name": "[parameters('capacityName')]",
            "location": "[parameters('location')]",
            "type": "Microsoft.SecurityCopilot/capacities",
            "properties": {
                "numberOfUnits": "[parameters('numberOfUnits')]",
                "crossGeoCompute": "[parameters('crossGeoCompute')]",
                "geo": "[parameters('geo')]"
            }
        }
    ]
}
```

### Benefits of Using Template Specs
1. **Standardization**: You can use standard ARM templates for your template spec, ensuring consistency across deployments.
2. **Access Management**: Instead of using SAS tokens, you manage access through Azure RBAC (Role-Based Access Control). Users can deploy the template spec without needing write access to the template itself.
3. **Integration**: You can seamlessly integrate the template spec into existing deployment processes, such as PowerShell scripts or DevOps pipelines.
4. **Sharing and Collaboration**: Template specs allow you to create canonical templates and share them with teams in your organization. They're secure because they're available for deployment by Azure Resource Manager, but not directly accessible to users without the correct permissions .


**Disclaimer**: Please be aware that the logic apps provided are examples intended for use with Copilot for Security. Users are encouraged to customize these samples to meet their specific requirements. These should serve as guidelines and inspiration for creating tailored logic apps for ones own use

**Technical Disclaimer: Logic Apps, SCU Usage, and Best Practices**

**Attention Customers!**

When utilizing Logic Apps on Copilot, please be aware that it may result in increased consumption of Secure Compute Units (SCUs). We recommend closely monitoring SCU usage to optimize resource management.