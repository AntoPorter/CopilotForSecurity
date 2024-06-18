# Deploy Copilot for Security

## Automated Deployment
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAntoPorter%2FSecurityAsCode%2Fmain%2FCopilotForSecurity%2Fazuredeploy.json)


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
- You use standard ARM templates for your template spec.
- You manage access through Azure RBAC, rather than SAS tokens.
- Users can deploy the template spec without having write access to the template.
  - Users only need read access to the template spec to deploy its template, so you can share the template without allowing others to modify it.
- You can integrate the template spec into existing deployment process, such as PowerShell script or DevOps pipeline.
- Template specs enable you to create canonical templates and share them with teams in your organization.
- The template specs are secure because they’re available to Azure Resource Manager for deployment, but not accessible to users without the correct permission.

