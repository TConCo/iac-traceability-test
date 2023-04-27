resource "google_compute_instance" "default" {
  name         = "test-3"
  machine_type = "e2-small"
  zone         = "us-central1-a"


  tags = ["foo", "bar"]
  labels = {
    yor_trace = "df432164-7951-42a7-9679-f09d172a476c"
  }
}
