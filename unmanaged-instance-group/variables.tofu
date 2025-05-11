variable "group_name" {
  description = "Name of the unmanaged instance group"
  type        = string
}

variable "existing_vm_names" {
  description = "List of existing VM instance names"
  type        = list(string)
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "zone" {
  description = "Zone where the instance group and VMs exist"
  type        = string
}
