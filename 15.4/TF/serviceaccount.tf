resource "yandex_iam_service_account" "n15" {
  folder_id = var.yandex_folder_id
  name      = "n15"
}

resource "yandex_resourcemanager_folder_iam_member" "viewer" {
  folder_id = var.yandex_folder_id
  role      = "viewer"
  member    = "serviceAccount:${yandex_iam_service_account.n15.id}"
}

resource "yandex_resourcemanager_folder_iam_member" "editor" {
  folder_id = var.yandex_folder_id
  role      = "editor"
  member    = "serviceAccount:${yandex_iam_service_account.n15.id}"
}
