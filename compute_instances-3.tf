resource "google_compute_instance" "default" {
  name         = "test-3"
  machine_type = "e2-small"
  zone         = "us-central1-a"
}


resource "aws_vpc" "vpc_tags_one_line" {
  cidr_block = ""
}