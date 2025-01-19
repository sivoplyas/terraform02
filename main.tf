resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop_net_1" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

resource "yandex_vpc_subnet" "develop_net_2" {
  name           = var.vm_db_vpc_name
  zone           = var.vm_db_default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.vm_db_default_cidr
}

data "yandex_compute_image" "ubuntu" {
  family = var.os_family
}

#resource "yandex_compute_instance" "platform" {
##  name        = var.vm_web_name
#  name        = local.vm_name_web
#  platform_id = var.vm_web_platform_id
#  zone = "ru-central1-a"
#  resources {
#    cores         = var.vm_web_cores
#   memory        = var.vm_web_memory
#    core_fraction = var.vm_web_core_fraction
##    cores         = 2
##    memory        = 1
##    core_fraction = 20
#  }
#  boot_disk {
#    initialize_params {
#      image_id = data.yandex_compute_image.ubuntu.image_id
#    }
#  }
#  scheduling_policy {
#    preemptible = var.vm_web_preemptible
##    preemptible = true
#  }
#  network_interface {
#    subnet_id = yandex_vpc_subnet.develop_net_1.id
#    nat = var.vm_web_nat
##    nat = true
#  }
#
#  metadata = {
#    serial-port-enable = var.vm_web_serial-port-enable
##    serial-port-enable = 1
#    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
#  }
#}

#resource "yandex_compute_instance" "netology-develop-platform-db" {#
##  name        = var.vm_db_name
#  name        = local.vm_name_db
#  platform_id = var.vm_db_platform_id
#  zone = var.vm_db_default_zone
#  resources {
#    cores         = var.vm_db_cores
#    memory        = var.vm_db_memory
#    core_fraction = var.vm_db_core_fraction
##    cores         = 2
##    memory        = 2
##    core_fraction = 20
#  }
#  boot_disk {
#    initialize_params {
#      image_id = data.yandex_compute_image.ubuntu.image_id
#   }
#  }
#  scheduling_policy {
#    preemptible = var.vm_db_preemptible
##    preemptible = true
#  }
#  network_interface {
#    subnet_id = yandex_vpc_subnet.develop_net_2.id
#    nat = var.vm_db_nat
##    nat = true
#  }
# metadata = {
#    serial-port-enable = var.vm_db_serial-port-enable
##    serial-port-enable = 1
#    ssh-keys           = "ubuntu:${var.vms_ssh_root_key}"
#  }
#}
############################################################
resource "yandex_compute_instance" "platform" {
  name        = local.vm_name_web
  platform_id = var.vm_web_platform_id
  zone = "ru-central1-a"
  resources {
    cores         = var.vms_resources.web.cores
    memory        = var.vms_resources.web.memory
    core_fraction = var.vms_resources.web.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_web_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop_net_1.id
    nat       = var.vm_web_nat
  }
  metadata = var.metadata
}

resource "yandex_compute_instance" "netology-develop-platform-db" {
  name        = local.vm_name_db
  platform_id = var.vm_db_platform_id
  zone = "ru-central1-b"
  resources {
    cores         = var.vms_resources.db.cores
    memory        = var.vms_resources.db.memory
    core_fraction = var.vms_resources.db.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = var.vm_db_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop_net_2.id
    nat       = var.vm_db_nat
  }
  metadata = var.metadata
}
