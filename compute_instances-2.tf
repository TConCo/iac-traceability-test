resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  labels = {
    git_commit           = "8849d3888f4f9ba2b6655ab28671b5c94d9e9a8c"
    git_file             = "compute_instances-2_tf"
    git_last_modified_at = "2023-04-27-13-43-21"
    git_last_modified_by = "fatihtokus"
    git_modifiers        = "fatihtokus"
    git_org              = "fatihtokus"
    git_repo             = "iac-traceability-test"
    yor_trace            = "95e83080-3b51-4b97-84f4-af00687ec61a"
  }
}
