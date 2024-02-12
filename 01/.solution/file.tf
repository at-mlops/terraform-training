provider "local" {
}

resource "local_file" "data" {
  content  = "This file was created during the workshop"
  filename = "${path.root}/data.txt"
}
