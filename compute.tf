resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = "n1-standard-1"
  zone         = var.instance_zone

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2210-kinetic-amd64-v20230126"
    }
  }
depends_on = [ var.custom_network ]

  network_interface {
    network = var.custom_network
    subnetwork = "subnet-01"
    
  }
  
}
