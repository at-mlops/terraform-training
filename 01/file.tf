resource "local_file" "data" {
  content  = format("This file was created during %s", "the workshop")
  filename = "${path.module}/data.txt"
}
