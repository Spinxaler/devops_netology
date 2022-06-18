provider "yandex" {
  token     = var.IAM_TOKEN
  cloud_id  = "b1gl34ihl91hnhkvt47i"
  folder_id = "b1gu1h8esdp2skfj111r"
  zone      = "ru-central1-a"
}

variable "IAM_TOKEN" {
  type = string
}

resource "yandex_vpc_network" "network_test" {
  name = "network_test"
}

resource "yandex_vpc_subnet" "subnet_test" {
  name           = "subnet_test"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network_test.id
  v4_cidr_blocks = ["10.120.0.0/24"]
}

data "yandex_compute_image" "centos" {
  family = "centos-7"
}

resource "yandex_compute_instance" "test" {
  name        = "test"
  count = local.inst_count[terraform.workspace]
  platform_id = "standard-v1"
  zone        = "ru-central1-a"

  resources {
     cores  = local.cores[terraform.workspace]
     memory = local.memory[terraform.workspace]
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.centos.id
      type = "network-hdd"
      size = local.size_hdd[terraform.workspace]
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_test.id
    nat       = true
  }
}

resource "yandex_compute_instance" "test_for_each" {
  for_each = local.instances
  name        = "test_for_each"
  allow_stopping_for_update = true 
  platform_id = "standard-v1"
  zone        = "ru-central1-a"

  resources {
     cores  = each.value
     memory = each.value
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.centos.id
      type = "network-hdd"
      size = local.size_hdd[terraform.workspace]
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_test.id
    nat       = true
  }

lifecycle {
    create_before_destroy = true
   }
}

locals {
  cores = {
    stage = 2
    prod = 4
  }
  memory = {
    stage = 2
    prod = 4
  }
  size_hdd = {
    stage = 10
    prod = 20
  }
  inst_count = {
    stage = 1
    prod = 2
  }
  instances = {
    "instance_1" = 2
    "instance_2" = 4
  }
}
