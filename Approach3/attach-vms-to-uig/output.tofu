output "attached_vm_self_links" {
  value = [
    for i in google_compute_instance_group_instance.attached_vms :
    i.instance
  ]
}
