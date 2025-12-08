# Azure Quota Increase Request Guide

## Current Issue
Your Azure subscription has **0 quota for Basic VMs**, which prevents deployment of App Service plans.

```
Current Limit (Basic VMs): 0
Current Usage: 0
Amount required: 1
```

---

## Step-by-Step: Request Quota Increase via Azure Portal

### Step 1: Go to Azure Portal
1. Open https://portal.azure.com
2. Sign in with your Azure subscription account

### Step 2: Navigate to Help + Support
1. Click **Help + Support** (top right, question mark icon)
2. Click **New support request**

### Step 3: Create Support Request
Fill in the following details:

| Field | Value |
|-------|-------|
| **Issue type** | Select: "Service and subscription limits (quotas)" |
| **Subscription** | Select your subscription: "Azure subscription 1 (a70c2e91-bb79-49c7-896e-788098f6c8fc)" |
| **Quota type** | Select: "App Service" |
| **Support plan** | (Free support is fine for quota requests) |

### Step 4: Problem Details
In the **Additional details** section:

**Summary:**
```
Request: Increase App Service Plan quota for Basic VMs
```

**Description:**
```
I need to increase the quota for Basic VMs (B1 tier) App Service plans in my subscription.

Current limit: 0 Basic VMs
Requested limit: 1 Basic VMs (minimum)

Deployment region: eastus (or your preferred region)

I want to deploy a Node.js web application using Azure App Service with B1 Basic tier plan.
```

### Step 5: Review and Submit
1. Review all details
2. Click **Create**
3. You'll receive a support ticket number

---

## Expected Timeline
- **Free Support Plan**: 24-48 hours response time
- **Paid Support Plans**: 1-8 hours response time

---

## Alternative: Request via PowerShell (Manual Alternative)

If you prefer PowerShell, you can check your current quota:

```powershell
# Login to Azure
az login

# Set your subscription
az account set --subscription "a70c2e91-bb79-49c7-896e-788098f6c8fc"

# Check current quota for App Service
az provider show --namespace Microsoft.Web --query "registrationState"

# View usage and quota (requires REST API or portal)
```

---

## What to Request

### Minimum Requirements
- **Resource**: App Service plans (B1 - Basic tier)
- **Current Limit**: 0 Basic VMs
- **Requested New Limit**: 1-2 Basic VMs
- **Region(s)**: eastus, westus, or your preferred region

### Recommended Increase (for future growth)
- Request 5-10 Basic VMs quota to allow multiple deployments without hitting limits again

---

## Re-enabling Azure Deployment After Quota Approval

Once Azure Support approves your quota increase, I'll re-enable the Azure deployment steps in the GitHub Actions workflow:

1. The workflow will automatically deploy to:
   - ✅ GCP Cloud Run (already working)
   - ✅ Azure App Service (after quota approval)

2. Both deployments will happen simultaneously on every push to `main`

3. You'll get two live URLs:
   - `https://helloworld-cloudrun-xxx.run.app/` (GCP)
   - `https://helloworld-app-xxx.azurewebsites.net/` (Azure)

---

## Frequently Asked Questions

**Q: Why do I have 0 quota?**
A: New subscriptions sometimes have default quotas of 0 for paid tiers. You need to explicitly request an increase.

**Q: How long does approval take?**
A: Typically 24-48 hours for free support. Azure rarely denies quota increases for development purposes.

**Q: Can I deploy to a different region to avoid quota limits?**
A: Each region has separate quota. Requesting quota in "all regions" is recommended.

**Q: What if my request is denied?**
A: Contact Azure Support directly. Explain your use case. They're usually generous with small quota increases for legitimate projects.

**Q: Do I need a paid support plan?**
A: No. Quota increase requests are handled via free support.

---

## After Approval: Verify Quota

Once approved, verify your new quota:

1. Go to Azure Portal
2. Search for "Quotas" or go to your subscription's Quotas section
3. Filter by "App Service"
4. Verify that "Basic VMs" now shows a limit > 0

---

## Next Steps

1. **Submit the quota increase request** using the steps above
2. **Wait for approval** (typically 24-48 hours)
3. **Notify me** when approved, and I'll re-enable Azure in the workflow
4. **Re-run the GitHub Actions workflow** to deploy to Azure

---

## Support Ticket Number Format
Your support ticket will look like: `2312081234567`

Keep this number for reference and follow-up.

---

## Questions or Issues?
- Azure Support: https://portal.azure.com → Help + Support → Browse Solutions
- GitHub Actions Logs: https://github.com/Samiksha998/HelloWorld_WebApp/actions

