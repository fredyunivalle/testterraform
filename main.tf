provider "null" {}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello, Terraform Enterprise!"
  }
}

resource "local_file" "example" {
  content  = "This is a test file to verify Terraform Enterprise integration."
  filename = "${path.module}/test.txt"
}