# Cloud Delivered Protection Status

## Description

**Cloud Delivered Protection** is a crucial feature of Microsoft Defender Antivirus that provides real-time, intelligent protection by leveraging cloud-based machine learning models. It helps in detecting and mitigating threats more effectively by analyzing suspicious files and behaviors in the cloud.

## Resolution Steps if Cloud Delivered Protection is Not Enabled

If Cloud Delivered Protection is not enabled, follow these steps to configure the Antivirus (AV) policy in Microsoft Intune to resolve the issue:

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
   - In the settings, ensure that **Cloud Delivered Protection** is enabled by configuring the following:
     - **Cloud-delivered protection**: Enable cloud-delivered protection.
     - **Cloud protection level**: Set the desired level of cloud protection (e.g., High, High plus, Zero tolerance).

5. **Assign the Policy**:
   - Assign the policy to the appropriate groups.
   - Review and create the policy.

6. **Monitor the Policy Deployment**:
   - Go to **Reports** > **Endpoint security** > **Antivirus** to monitor the status and compliance of the policy.

By following these steps, you can ensure that Cloud Delivered Protection is enabled and your devices are protected and compliant with your organization's security standards.
