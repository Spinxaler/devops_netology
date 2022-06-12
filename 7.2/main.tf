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
  platform_id = "standard-v1"
  zone        = "ru-central1-a"

  resources {
    cores  = 1
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.centos.id
      type = "network-hdd"
      size = 10
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_test.id
  }
}

