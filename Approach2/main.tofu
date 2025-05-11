resource "google_compute_instance_group" "unmanaged_group" {
  name        = var.group_name
  zone        = var.zone
  description = "Unmanaged Instance Group for existing VMs"

  named_port {
    name = "http"
    port = 80
  }
}

# Attach existing instances to unmanaged group
resource "google_compute_instance_group_instance" "existing_vms_attach" {
  count          = length(var.existing_vm_names)
  instance_group = google_compute_instance_group.unmanaged_group.name
  zone           = var.zone

  instances = [
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/zones/${var.zone}/instances/${var.existing_vm_names[count.index]}"
  ]
}
