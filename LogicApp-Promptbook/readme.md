# Logic App Promptbook with Send Email Function

## Automated Deployment
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAntoPorter%2FCopilotForSecurity%2Fmain%2FLogicApp-Promptbook%2Fazuredeploy.json)

## Overview

The Logic App template utilizing Copilot for Security is designed to streamline your security operations by automating the process of summarizing and emailing data outputs on a scheduled basis. This integration allows for efficient monitoring and quick response, ensuring that your security posture is proactive rather than reactive. With the ability to customize prompts and tailor the output, the template offers a flexible solution to fit the unique needs of your security infrastructure.

### Pre-Deployment Instructions

Prior to beginning the installation process, it's crucial to confirm that you have met the following prerequisites:

- The User that will deploy this Logic App need to have a Contributor Role to the Resource Group where the Logic App will be created.
- You enabled the Security Copilot SCU within your tenant
- The user authenticated within the Copilot Logic App API Connections has permission to:
	- Send Emails (Exchange License), and 
	- Utilize Copilot for Security (Security Role Permissions)
- You define the Parameters for each Prompt, Including Grounding Parameters, and
- You define the Recurrence of the Logic App to run.

### Post-Deployment Instructions

Upon Deployment of the Logic App, you will be required to Authenticate both the Copilot for Security API Connector and the Office 365 Connector.

This can be achieved by going to the Logic App deployed and navigating to:
1. Navigate to 'Development Tools > API Connections'
2. Selecting the 'Office 365 API' Connection
3. Navigate to 'General > Edit API Connection'
4. Select 'Authorize' and enter in the User Credentials.
5. Click 'Save'.
6. Then repeat the process for the Copilot for Security API Connection.

Once Complete, you will be able to Edit and Save the Logic App Parameters and commence the use of the Logic App Promptbook template.

### Logic App Designer

![[LogicAppDesigner-Overview.png]]

### Logic App Parameters

- Email: regarding the To: field, which the summary will be sent to.
- Organization Name: Appears in the Email Subject Line
- Sentinel Workspace Name: The Sentinel Workspace you wish to target.
- Resource Group Name: The resource group which the sentinel workspace resides in
- Subscription Name: The subscription which the resource group resides in.
- Azure AD Tenant ID
- Prompt 1
- Prompt 2
- Prompt 3
- Prompt 4

![[LogicAppDesigner-Parameters.png]]

### Prompt Template

- Prompt 1: Includes the grounding parameters required to investigate Sentinel and Defender incidents.
- Prompt 2 and 3: Have been left blank for your convenience.
- Prompt 4: Has been updated to include the 'SummarizeData' Skill Name, and a prepopulated Prompt to receive a summary of the investigation with an Executive and Technical Summary.

### Important Information

- All Prompts within the Logic App are related to the Session ID created by Prompt 1. This ensures that all prompts are using the same prior context and grounding information.
- The Output of Prompt 4 is what will be captured in the Email Body to be sent.
### Email Output

Upon the successful Logic App run, the "Email" recipient should receive a Markdown style email with relative summary information as to your investigation.

![[LogicApp-Markdown Email.png]]

## Copilot for Security - Prompt Assistance

Where possible when retrieving information from Sentinel and Defender XDR, specify the following details:

Microsoft Sentinel:
- Tenant ID
- Subscription Name
- Resource Group Name
- Sentinel Workspace Name

Defender XDR:
- Tenant ID
- Defender Incident / Alert ID

Example of Prompt Format:
> WorkspaceName:*workspace*, SubscriptionName:*Subscription*, ResourceGroupName:*Workspace*, Request:*In Microsoft Sentinel show me detailed information for incident ID 12345*.

If you wish for a Table of Contents to be generated based on information you are collecting through prompts, Specify the Table Column Headings and the information you would like included into those columns.

If you are looking at what type of information you could gather from a Prompt, you should consider using the [Copilot for Security](https://securitycopilot.microsoft.com) portal.

For additional prompting Tips and Samples, please review the following resources: 
- [Prompting Tips for Copilot for Security](https://github.com/Azure/Copilot-For-Security/tree/main/Customer%20Guides/Prompting%20Tips%20for%20Copilot%20For%20Security)
- [Promptbook Samples](https://github.com/Azure/Copilot-For-Security/tree/main/Promptbook%20samples)

## Examples of Prompts for Incidents
### Incident Details
> "Show me detailed information for incident ID 12345."

This prompt can provide detailed information for a specific incident, including its severity, the number of entities involved, the raw events that triggered the incident, the incident’s unique ID, and any mapped MITRE ATT&CK tactics or techniques.

### Incident Summary
> "Give me a summary of all security incidents in the last month."

This prompt can provide a high-level overview of all the security incidents that occurred in the past month.

### Incident Timeline
> "Show me the timeline of alerts and bookmarks for incident ID 12345."

This prompt can help you reconstruct the timeline of attacker activity for a specific incident.

### Similar Incidents
> "Show me similar incidents to incident ID 12345."

This prompt can show you a collection of incidents that most closely resemble the current incident.

### Incident Severity
> "List all incidents with high severity in the past week."

This prompt can help you prioritize incidents based on their severity.

### Incident Status
> "Show me all active incidents."

This prompt can help you keep track of incidents that are currently being investigated.

### Incident Investigation
> "Give me a summary of all security incidents in the last quarter."

This prompt can help you generate an Incident Investigation report, which can provide a comprehensive view of all security incidents.

## Examples of Prompts for Reporting Purposes
The following prompt suggestions are based around potential reporting capabilities via Copilot for Security.

These prompts may require certain plugins to be enabled, or the use of additional toolsets and capabilities within your Microsoft Stack to retrieve relative information.

### User Authentication Reports
> "Show me the top 50 IP addresses from where login attempts have been denied in the last 24 hours."

This prompt can help you generate a User Authentication report, which can detect attempts to gain access to your IT infrastructure through any existing account.

### File Access Attempts
> "List all the unsuccessful file access attempts in the past week."

This prompt can help you generate a report on file access attempts, which can be crucial in identifying unauthorized attempts to access sensitive files.

### Password Change Events
> "Show me all the password change events in the last month."

This prompt can help you generate a report on password change events, which can be useful in tracking any unauthorized attempts to change passwords.

### Threat Detection
> "Show me all the detected threats in the last 30 days."

This prompt can help you generate a Threat Detection report, which can provide insights into the security threats your organization is facing.

### Network Traffic Analysis
> "Show me the network traffic patterns for the last week."

This prompt can help you generate a Network Traffic Analysis report, which can provide insights into the data flow within your network.

### Malware Activity
> "List all detected malware activities in the past month."

This prompt can help you generate a Malware Activity report, which can be crucial in identifying and mitigating malware threats.

### User Behavior Analysis
> "Give me a summary of unusual user behavior in the last 30 days."

This prompt can help you generate a User Behavior Analysis report, which can detect potential insider threats or compromised accounts.

### Firewall Activity
> "Show me all the firewall deny events in the last 24 hours."

This prompt can help you generate a Firewall Activity report, which can provide insights into the effectiveness of your firewall rules.

### Vulnerability Assessment
> "List all the vulnerabilities detected in the last quarter."

This prompt can help you generate a Vulnerability Assessment report, which can provide a comprehensive view of the vulnerabilities in your IT infrastructure.

### Device Compliance
> "Show me all devices that are not in compliance with our security policy."

This prompt can help you generate a Device Compliance report, which can provide insights into the security posture of your devices.

### Data Loss Prevention
> "List all data loss prevention (DLP) incidents in the past week."

This prompt can help you generate a DLP report, which can be crucial in identifying and mitigating data leaks.

### Privileged Account Activity
> "Give me a summary of privileged account activity in the last 30 days."

This prompt can help you generate a Privileged Account Activity report, which can detect potential misuse of privileged accounts.

### Patch Management
> "Show me all the devices that are missing critical security patches." 

This prompt can help you generate a Patch Management report, which can provide insights into the patch status of your devices.

### Intrusion Detection
> "List all the intrusion detection events in the last month." 

This prompt can help you generate an Intrusion Detection report, which can provide insights into the security threats your organization is facing.

### Threat Detection
> "Show me all the detected threats in the last 30 days." 

This prompt can help you generate a Threat Detection report, which can provide insights into the security threats your organization is facing.

### Network Traffic Analysis
> "Show me the network traffic patterns for the last week." 

This prompt can help you generate a Network Traffic Analysis report, which can provide insights into the data flow within your network.

### Malware Activity
> "List all detected malware activities in the past month." 

This prompt can help you generate a Malware Activity report, which can be crucial in identifying and mitigating malware threats.

### User Behavior Analysis
> "Give me a summary of unusual user behavior in the last 30 days." 

This prompt can help you generate a User Behavior Analysis report, which can detect potential insider threats or compromised accounts.

### Firewall Activity
> "Show me all the firewall deny events in the last 24 hours." 

This prompt can help you generate a Firewall Activity report, which can provide insights into the effectiveness of your firewall rules.


**Disclaimer**: Please be aware that the logic apps provided are examples intended for use with Copilot for Security. Users are encouraged to customize these samples to meet their specific requirements. These should serve as guidelines and inspiration for creating tailored logic apps for ones own use

**Technical Disclaimer: Logic Apps, SCU Usage, and Best Practices**

**Attention Customers!**

When utilizing Logic Apps on Copilot, please be aware that it may result in increased consumption of Secure Compute Units (SCUs). We recommend closely monitoring SCU usage to optimize resource management.