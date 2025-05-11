resource "google_compute_instance_group" "unmanaged_group" {
  name        = var.group_name
  zone        = var.zone
  description = "Unmanaged Instance Group created with OpenTofu"

  named_port {
    name = "http"
    port = 80
  }
}

resource "google_compute_instance" "vm_instance" {
  count        = var.instance_count
  name         = "${var.instance_name_prefix}-${count.index}"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }
}

resource "google_compute_instance_group_instance" "group_instance" {
  count          = var.instance_count
  instance_group = google_compute_instance_group.unmanaged_group.name
  zone           = var.zone

  instances = [
    google_compute_instance.vm_instance[count.index].self_link
  ]
}
