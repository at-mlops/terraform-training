resource "local_file" "hello" {
  content  = "hello, world"
  filename = "${path.module}/hello.txt"
}
