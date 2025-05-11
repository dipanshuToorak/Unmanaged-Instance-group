module "attach_existing_vms" {
  source              = "./modules/attach-vms-to-uig"
  project_id          = var.project_id
  zone                = var.zone
  instance_group_name = var.instance_group_name
  vm_names            = var.vm_names
}
