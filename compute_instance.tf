resource "google_service_account" "default" {
  account_id   = "service_account_id"
  display_name = "Service Account"
}

resource "google_compute_instance" "default" {
  name         = "test-3"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  labels = {
    git_commit           = "55b06a8f417f1ca02c285ac40b54828214fab26e"
    git_file             = "compute_instance_tf"
    git_last_modified_at = "2023-04-27-13-36-26"
    git_last_modified_by = "fatihtokus"
    git_modifiers        = "fatihtokus"
    git_org              = "fatihtokus"
    git_repo             = "iac-traceability-test"
    yor_trace            = "bdbb0e13-d19e-436b-b224-4776c337ecbb"
  }
}

resource "google_compute_instance" "default" {
  name         = "test-2"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  labels = {
    git_commit           = "55b06a8f417f1ca02c285ac40b54828214fab26e"
    git_file             = "compute_instance_tf"
    git_last_modified_at = "2023-04-27-13-36-26"
    git_last_modified_by = "fatihtokus"
    git_modifiers        = "fatihtokus"
    git_org              = "fatihtokus"
    git_repo             = "iac-traceability-test"
    yor_trace            = "bdbb0e13-d19e-436b-b224-4776c337ecbb"
  }
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
  labels = {
    git_commit           = "55b06a8f417f1ca02c285ac40b54828214fab26e"
    git_file             = "compute_instance_tf"
    git_last_modified_at = "2023-04-27-13-36-26"
    git_last_modified_by = "fatihtokus"
    git_modifiers        = "fatihtokus"
    git_org              = "fatihtokus"
    git_repo             = "iac-traceability-test"
    yor_trace            = "bdbb0e13-d19e-436b-b224-4776c337ecbb"
  }
}
