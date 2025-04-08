resource "google_storage_bucket" "buckets" {
  count                       = 5
  name                        = "my-bucket-${count.index + 1}-${var.project_id}"
  location                    = "US"
  force_destroy               = true
  uniform_bucket_level_access = true
}