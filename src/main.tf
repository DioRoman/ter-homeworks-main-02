resource "yandex_vpc_network" "develop" {
  name = var.vm_web_vpc_name
}

resource "yandex_vpc_subnet" "develop" {
  name           = var.vm_web_vpc_name
  zone           = var.vm_web_default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.vm_web_default_cidr
}

resource "yandex_vpc_subnet" "develop-db" {
  name           = var.vm_db_vpc_name
  zone           = var.vm_web_zone_b
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.vm_db_default_cidr
}

data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image_family
}

resource "yandex_compute_instance" "web" {
  name        = local.vm_name_1
  platform_id = var.vm_web_platform_id
  resources {
    cores         = var.vms_resources["web"].cores
    memory        = var.vms_resources["web"].memory
    core_fraction = var.vms_resources["web"].core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vms_resources["web"].preemptible
  }
  
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }

  metadata = {
    serial-port-enable = var.vms_metadata.serial-port-enable
    ssh-keys           = "ubuntu:${var.vms_metadata.ssh-keys}"
  }
}

resource "yandex_compute_instance" "db" {
  name        = local.vm_name_2
  platform_id = var.vm_db_platform_id
  zone = var.vm_db_zone
  
  resources {
    cores         = var.vms_resources["db"].cores
    memory        = var.vms_resources["db"].memory
    core_fraction = var.vms_resources["db"].core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vms_resources["db"].preemptible
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop-db.id
    nat       = true
  }

  metadata = {
    serial-port-enable = var.vms_metadata.serial-port-enable
    ssh-keys           = "ubuntu:${var.vms_metadata.ssh-keys}"
  }
}