variable "yc_token" {
  type = string
  description = "Yandex Cloud OAuth token"
  
}

variable "yc_cloud_id" {
  type = string
  description = "Yandex Cloud ID"
  default = "b1geadik2t5vm60h4o8a"
}

variable "yc_folder_id" {
  type = string
  description = "Yandex Cloud Folder ID"
  default = "b1gtgi96i531q9kphh3a"
}

variable "yc_zone" {
  type = string
  description = "Yandex Cloud AZ"
  default = "ru-central1-a"
}

variable "yc_lamp_image_id" {
  type = string
  description = "Yandex Cloud LAMP Image ID"
  default = "fd827b91d99psvq5fjit"
}

variable "yc_service_account" {
  type = string
  description = "Yandex Service account"
  default = "ajej4e4vsa7vnlvi6pnj"
}

variable "yc_iam_access_key" {
  type = string
  description = "Yandex IAM Access Key"
  default = "YCAJEHCAWMhGB4RSkMDlNNZWf"
}

variable "yc_iam_secret_key" {
  type = string
  description = "Yandex IAM Secret Key"
  default = "YCPmne6bt044LXVZ4iERUiQ0P6BcDV5f9C2thGLZ"
}
