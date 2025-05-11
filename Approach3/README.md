## Attach Existing VMs to Unmanaged Instance Group (Approach 3)

### 🧩 Overview

This setup uses [OpenTofu](https://opentofu.org/) to attach a list of **pre-existing Google Compute Engine VM instances** to an existing **Unmanaged Instance Group (UIG)** in a specific zone.

This is useful when:

* You already have VMs provisioned outside of Terraform/OpenTofu

---

###  Project Structure

```
project-root/
├── main.tofu                 # Calls the module
├── provider.tofu             # Configures Google Cloud provider
├── variables.tofu            # Declares input variables
├── terraform.tfvars          # Assigns values to variables
├── output.tofu               # Outputs self-links of attached VMs
└── modules/
    └── attach-vms-to-uig/
        ├── main.tofu         # Core logic to attach VMs
        ├── variables.tofu    # Input variable definitions
        └── output.tofu       # Output of attached VM links
```

---

### Prerequisites

* [OpenTofu](https://opentofu.org/docs/intro/install/)
* A Google Cloud Project
* A service account with appropriate permissions (Compute Admin)
* Existing VM instances and an existing Unmanaged Instance Group (UIG) in the same zone

---

### ⚙️ Files Explained

#### 🧠 `provider.tofu`

Configures the GCP provider using your credentials:

---

#### 📥 `variables.tofu`

Declares all input variables such as project ID, zone, and list of VM names:

---

#### 🧾 `terraform.tfvars`

This is where you pass actual values:

---

#### 📦 `modules/attach-vms-to-uig/main.tofu`

Attaches the given VM names to the specified UIG:

---

### 🚀 Usage

#### 1. Initialize the directory:

```bash
tofu init
```

#### 2. Apply the configuration:

```bash
tofu apply -var-file="terraform.tfvars"
```

You’ll see a list of VMs being attached to the UIG.

---

### 📤 Outputs

Defined in `output.tofu`:

This will print the self-links of the VM instances that were successfully attached.

---

### 📎 Notes

* All VM instances and the instance group **must exist in the same zone**.
* This does **not create** any VM or instance group — it only performs **attachment**.
* You can reuse the module for different VM lists and UIGs by passing different values.

---
