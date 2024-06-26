
resource "google_redis_instance" "memorystore_redis_instance" {
  name           = "${var.project_name}-redis-instance"
  project        = module.project_services.project_id
  tier           = "BASIC"
  memory_size_gb = 1
  location_id       = "${var.gcp_region}-a"
  redis_version  = "REDIS_6_X"

  lifecycle {
    prevent_destroy = false
  }
}