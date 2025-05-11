## Attach Existing VMs to an Unmanaged Instance Group using OpenTofu

This setup allows you to **attach existing VM instances** in your Google Cloud project to a new **Unmanaged Instance Group** using [OpenTofu](https://opentofu.org/), an open-source infrastructure-as-code tool.

---

###  Files Overview

* `main.tofu` – Defines the unmanaged instance group and attaches existing VMs.
* `variables.tofu` – Declares all input variables needed for the configuration.
* `terraform.tfvars` – Supplies actual values for the variables.
* `output.tofu` – Outputs the instance group self link (optional).

---

### Requirements

* OpenTofu or Terraform installed
* A GCP project with at least 1 or more VMs already created
* The VMs and instance group must be in the **same zone**

---

### 🔧 Configuration Details

#### `main.tofu`

This:

* Creates an unmanaged instance group in a given zone
* Attaches each existing VM using its full GCP self-link URL

---

#### `variables.tofu`

Declares all variables used in the configuration:

---

#### `terraform.tfvars`


Replace `"existing-vm-1"` and `"existing-vm-2"` with your real VM instance names.

---

#### `output.tofu`

This will print the self-link URL of your unmanaged instance group.

---

### How to Use

1. Ensure your existing VMs are up and in the same zone.
2. Place all `.tofu` files in one directory.
3. Run the following commands:

```bash
tofu init
tofu apply -var-file="terraform.tfvars"
```

---

### ✅ Result

After applying, you'll have:

* A new unmanaged instance group
* Your existing VMs attached to it

---
