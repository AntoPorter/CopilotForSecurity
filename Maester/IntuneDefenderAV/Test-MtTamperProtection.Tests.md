# Tamper Protection Status

## Description

**Tamper Protection** is a crucial feature of Microsoft Defender Antivirus that helps protect certain security settings from being disabled or changed by unauthorized users. It ensures that critical security features, such as real-time protection and cloud-delivered protection, remain active and cannot be tampered with during cyber attacks.

## Resolution Steps if Tamper Protection is Not Enabled

If Tamper Protection is not enabled, follow these steps to configure the Antivirus (AV) policy in Microsoft Intune to resolve the issue:

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
   - In the settings, ensure that **Tamper Protection** is enabled by configuring the following:
     - **Tamper protection**: Ensure tamper protection is enabled.

5. **Assign the Policy**:
   - Assign the policy to the appropriate groups.
   - Review and create the policy.

6. **Monitor the Policy Deployment**:
   - Go to **Reports** > **Endpoint security** > **Antivirus** to monitor the status and compliance of the policy.

By following these steps, you can ensure that Tamper Protection is enabled and your devices are protected and compliant with your organization's security standards.
