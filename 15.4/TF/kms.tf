resource "yandex_kms_symmetric_key" "n15" {
  name              = "n15"
  description       = "Netology 15.4 KSM key"
  default_algorithm = "AES_128"
  rotation_period   = "8760h" 
}