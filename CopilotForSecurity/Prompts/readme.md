# Copilot for Security - Report Prompting

Where possible when retrieving information from Sentinel and Defender XDR, specify the following details (if possible):

Microsoft Sentinel:
- Tenant ID
- Subscription Name
- Resource Group Name
- Sentinel Workspace Name

Defender XDR:
- Tenant ID
- Defender Incident / Alert ID

Example of Prompt Format:
> WorkspaceName:*workspace* SubscriptionName:*Subscription* ResourceGroupName:*Workspace* Request:*Show me detailed information for incident ID 12345*.

## Incident Details
> "Show me detailed information for incident ID 12345."

This prompt can provide detailed information for a specific incident, including its severity, the number of entities involved, the raw events that triggered the incident, the incident’s unique ID, and any mapped MITRE ATT&CK tactics or techniques.

## Incident Summary
> "Give me a summary of all security incidents in the last month."

This prompt can provide a high-level overview of all the security incidents that occurred in the past month.

## Incident Timeline
> "Show me the timeline of alerts and bookmarks for incident ID 12345."

This prompt can help you reconstruct the timeline of attacker activity for a specific incident.

## Similar Incidents
> "Show me similar incidents to incident ID 12345."

This prompt can show you a collection of up to 20 other incidents that most closely resemble the current incident.

## Incident Severity
> "List all incidents with high severity in the past week."

This prompt can help you prioritize incidents based on their severity.

## Incident Status
> "Show me all active incidents."

This prompt can help you keep track of incidents that are currently being investigated.


# Examples of Prompts for Reporting
The following prompt suggestions are based around potential reporting capabilities via Copilot for Security.

These prompts may require certain plugins to be enabled, or the use of additional toolsets and capabilities within your Microsoft Stack to retrieve relative information.

## User Authentication Reports
> "Show me the top 50 IP addresses from where login attempts have been denied in the last 24 hours."

This prompt can help you generate a User Authentication report, which can detect attempts to gain access to your IT infrastructure through any existing account.

## File Access Attempts
> "List all the unsuccessful file access attempts in the past week."

This prompt can help you generate a report on file access attempts, which can be crucial in identifying unauthorized attempts to access sensitive files.

## Password Change Events
> "Show me all the password change events in the last month."

This prompt can help you generate a report on password change events, which can be useful in tracking any unauthorized attempts to change passwords.

## Incident Investigation
> "Give me a summary of all security incidents in the last quarter."

This prompt can help you generate an Incident Investigation report, which can provide a comprehensive view of all security incidents.

## Threat Detection
> "Show me all the detected threats in the last 30 days."

This prompt can help you generate a Threat Detection report, which can provide insights into the security threats your organization is facing.

## Network Traffic Analysis
> "Show me the network traffic patterns for the last week."

This prompt can help you generate a Network Traffic Analysis report, which can provide insights into the data flow within your network.

## Malware Activity
> "List all detected malware activities in the past month."

This prompt can help you generate a Malware Activity report, which can be crucial in identifying and mitigating malware threats.

## User Behavior Analysis
> "Give me a summary of unusual user behavior in the last 30 days."

This prompt can help you generate a User Behavior Analysis report, which can detect potential insider threats or compromised accounts.

## Firewall Activity
> "Show me all the firewall deny events in the last 24 hours."

This prompt can help you generate a Firewall Activity report, which can provide insights into the effectiveness of your firewall rules.

## Vulnerability Assessment
> "List all the vulnerabilities detected in the last quarter."

This prompt can help you generate a Vulnerability Assessment report, which can provide a comprehensive view of the vulnerabilities in your IT infrastructure.

## Device Compliance
> "Show me all devices that are not in compliance with our security policy."

This prompt can help you generate a Device Compliance report, which can provide insights into the security posture of your devices.

## Data Loss Prevention
> "List all data loss prevention (DLP) incidents in the past week."

This prompt can help you generate a DLP report, which can be crucial in identifying and mitigating data leaks.

## Privileged Account Activity
> "Give me a summary of privileged account activity in the last 30 days."

This prompt can help you generate a Privileged Account Activity report, which can detect potential misuse of privileged accounts.

## Patch Management
> "Show me all the devices that are missing critical security patches." 

This prompt can help you generate a Patch Management report, which can provide insights into the patch status of your devices.

## Intrusion Detection
> "List all the intrusion detection events in the last month." 

This prompt can help you generate an Intrusion Detection report, which can provide insights into the security threats your organization is facing.

## Threat Detection
> "Show me all the detected threats in the last 30 days." 

This prompt can help you generate a Threat Detection report, which can provide insights into the security threats your organization is facing.

## Network Traffic Analysis
> "Show me the network traffic patterns for the last week." 

This prompt can help you generate a Network Traffic Analysis report, which can provide insights into the data flow within your network.

## Malware Activity
> "List all detected malware activities in the past month." 

This prompt can help you generate a Malware Activity report, which can be crucial in identifying and mitigating malware threats.

## User Behavior Analysis
> "Give me a summary of unusual user behavior in the last 30 days." 

This prompt can help you generate a User Behavior Analysis report, which can detect potential insider threats or compromised accounts.

## Firewall Activity
> "Show me all the firewall deny events in the last 24 hours." 

This prompt can help you generate a Firewall Activity report, which can provide insights into the effectiveness of your firewall rules.
