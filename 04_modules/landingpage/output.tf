output "checksum" {
    value = local_file.page.content_sha256
}
