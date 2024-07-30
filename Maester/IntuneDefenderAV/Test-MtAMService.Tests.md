# AMService Status

## Description

The **AMService** is a critical component for managing and securing devices within your organization. When enabled, it ensures that all necessary security protocols and updates are applied, maintaining the integrity and safety of your network.

## Resolution Steps if AMService is Not Enabled

If the AMService is not enabled, follow these steps to configure the Antivirus (AV) policy in Microsoft Intune to resolve the issue:

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
   - In the settings, ensure that **AMService** is enabled by configuring the following:
     - **Real-time protection**: Turn on real-time protection.
     - **Cloud-delivered protection**: Enable cloud-delivered protection.
     - **Tamper protection**: Ensure tamper protection is enabled.

5. **Assign the Policy**:
   - Assign the policy to the appropriate groups.
   - Review and create the policy.

6. **Monitor the Policy Deployment**:
   - Go to **Reports** > **Endpoint security** > **Antivirus** to monitor the status and compliance of the policy.

By following these steps, you can ensure that the AMService is enabled and your devices are protected and compliant with your organization's security standards.
