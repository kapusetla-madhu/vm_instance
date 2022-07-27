provider "google" {
  credentials = file("terraform-practice-89850-auth.json")
  project = var.Vproject-id
  region  = var.Vregion
  zone    = var.Vzone
}

resource "google_compute_instance" "vm_instance" {
  name         = var.Vinstancename
  machine_type = var.Vmachine_type

  boot_disk {
    initialize_params {
      image = var.Vimage
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}