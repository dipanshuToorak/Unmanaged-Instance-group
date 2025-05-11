## Unmanaged Instance Group with VMs on GCP using OpenTofu

This project uses **OpenTofu** (an open-source Terraform alternative) to create:

* ✅ A specified number of Google Compute Engine VMs
* ✅ An **unmanaged** instance group
* ✅ Attachment of VMs to that unmanaged group

---

## 📁 Project Structure

```
.
├── main.tofu           # Core infrastructure: VMs and instance group
├── variables.tofu      # Input variables declared with types and descriptions
├── terraform.tfvars    # Actual values for the variables
├── output.tofu         # Outputs for inspection (like the instance group URL)
```

---

## 🔧 Prerequisites

* [ ] GCP project with billing enabled
* [ ] A service account key file with Compute Admin permissions
* [ ] OpenTofu installed: [https://opentofu.org](https://opentofu.org)

---

## 📄 File Explanations

### 🔹 `main.tofu`

Defines the core infrastructure:

---

### 🔹 `variables.tofu`

Declares all variables used in the configuration:

---

### 🔹 `terraform.tfvars`

Provides actual values for variables:

---

### 🔹 `output.tofu`

Displays information after apply:

---

## 🚀 How to Use This

### 1. Authenticate with GCP

Ensure you have a **service account key JSON** with Compute Admin permissions.

```bash
export GOOGLE_CREDENTIALS=$(cat ./gcp-key.json)
```

Or set it in the provider block (if you're using `provider.tf`).

---

### 2. Initialize the Project

```bash
tofu init
```

---

### 3. Validate the Config (Optional)

```bash
tofu validate
```

---

### 4. Apply the Configuration

```bash
tofu apply -var-file="terraform.tfvars"
```

Confirm with `yes` when prompted.

---

### 5. Check the Output

You should see:

```
Outputs:

instance_group = "https://www.googleapis.com/compute/v1/projects/..."
```

---

### 6. Cleanup When Done

```bash
tofu destroy -var-file="terraform.tfvars"
```

---

## 🧠 Notes

* This creates **unmanaged** groups, meaning you manually manage which instances are in the group.

---
