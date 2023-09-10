resource "local_file" "page" {
  content  = <<EOF
    <h1>${var.title}</h1>

    ${var.content}
  EOF
  filename = "index.html"
}
