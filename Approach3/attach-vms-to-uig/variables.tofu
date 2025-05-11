variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "zone" {
  description = "Zone where instance group and VMs exist"
  type        = string
}

variable "instance_group_name" {
  description = "Name of the existing unmanaged instance group"
  type        = string
}

variable "vm_names" {
  description = "List of VM instance names to attach"
  type        = list(string)
}
