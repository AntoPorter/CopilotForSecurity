# Network Protection Status

## Description

**Network Protection** is a critical feature of Microsoft Defender Antivirus that helps protect devices from internet-based threats. It prevents connections to dangerous domains that might host phishing scams, exploits, and other malicious content, thereby safeguarding your network.

## Resolution Steps if Network Protection is Not Enabled

If Network Protection is not enabled, follow these steps to configure the Antivirus (AV) policy in Microsoft Intune to resolve the issue:

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
   - In the settings, ensure that **Network Protection** is enabled by configuring the following:
     - **Network Protection**: Enable Network Protection to block connections to dangerous domains.

5. **Assign the Policy**:
   - Assign the policy to the appropriate groups.
   - Review and create the policy.

6. **Monitor the Policy Deployment**:
   - Go to **Reports** > **Endpoint security** > **Antivirus** to monitor the status and compliance of the policy.

By following these steps, you can ensure that Network Protection is enabled and your devices are protected and compliant with your organization's security standards.
