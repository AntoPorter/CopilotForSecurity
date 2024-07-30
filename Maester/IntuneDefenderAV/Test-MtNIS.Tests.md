# Network Inspection System (NIS) Status

## Description

The **Network Inspection System (NIS)** is a crucial feature of Microsoft Defender Antivirus that helps protect your network by inspecting network traffic for signs of malicious activity. It provides an additional layer of security by analyzing network packets and blocking potential threats before they can cause harm.

## Resolution Steps if NIS is Not Enabled

If NIS is not enabled, follow these steps to configure the Antivirus (AV) policy in Microsoft Intune to resolve the issue:

1. **Sign in to the Microsoft Intune admin center**:
   - Go to [Microsoft Intune](https://intune.microsoft.com)

2. **Navigate to Endpoint Security**:
   - In the left-hand menu, select **Endpoint security**.

3. **Create an Antivirus Policy**:
   - Select **Antivirus** under the **Manage** section.
   - Click on **+ Create Policy**.

4. **Configure the Policy**:
   - Choose the platform (e.g., Windows 10 and later).
   - Select **Microsoft Defender Antivirus** as the profile.
   - In the settings, ensure that **Network Inspection System (NIS)** is enabled by configuring the following:
     - **Network Inspection System (NIS)**: Enable NIS to inspect network traffic and block potential threats.

5. **Assign the Policy**:
   - Assign the policy to the appropriate groups.
   - Review and create the policy.

6. **Monitor the Policy Deployment**:
   - Go to **Reports** > **Endpoint security** > **Antivirus** to monitor the status and compliance of the policy.

By following these steps, you can ensure that NIS is enabled and your devices are protected and compliant with your organization's security standards.
