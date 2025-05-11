resource "google_compute_instance_group_instance" "attached_vms" {
  count          = length(var.vm_names)
  instance_group = var.instance_group_name
  zone           = var.zone

  instances = [
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/zones/${var.zone}/instances/${var.vm_names[count.index]}"
  ]
}
