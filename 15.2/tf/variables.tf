variable "yc_token" {
  type = string
  description = "Yandex Cloud OAuth token"
  
}

variable "yc_cloud_id" {
  type = string
  description = "Yandex Cloud ID"
 
}

variable "yc_folder_id" {
  type = string
  description = "Yandex Cloud Folder ID"
  
}

variable "yc_zone" {
  type = string
  description = "Yandex Cloud AZ"
  default = "ru-central1-a"
}

variable "yc_lamp_image_id" {
  type = string
  description = "Yandex Cloud LAMP Image ID"
 
}

variable "yc_service_account" {
  type = string
  description = "Yandex Service account"
  
}

variable "yc_iam_access_key" {
  type = string
  description = "Yandex IAM Access Key"
  
}

variable "yc_iam_secret_key" {
  type = string
  description = "Yandex IAM Secret Key"
  
}
