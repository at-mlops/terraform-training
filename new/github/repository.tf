resource "github_repository" "example" {
  name        = "example"
  description = "Our workshop repository"

  visibility = "private"
}

resource "github_actions_secret" "s1" {
  repository      = github_repository.example.name
  secret_name     = "s1"
  plaintext_value = "foo"
}


resource "github_actions_secret" "azure_credentials" {
  repository      = github_repository.example.name
  secret_name     = "AZURE_CREDENTIALS_RENAMED"
  plaintext_value = <<EOF
{
  "appId": "d7f26dec-0b39-43ae-8ae5-48b62cbc9a94",
  "clientId": "d7f26dec-0b39-43ae-8ae5-48b62cbc9a94",
  "tenantId": "44d8cd30-12b4-46ab-82b4-56bec7d7a555",
  "displayName": "gerhardCi",
  "clientSecret": "xWl8Q~TtAn3Dd6DINxjNvATwtBt6feu7rrbQ1cI6",
  "subscriptionId": "6d2e3a80-7b47-4bab-a829-b4f4e73a77f5",
  "password": "xWl8Q~TtAn3Dd6DINxjNvATwtBt6feu7rrbQ1cI6",
  "tenant": "44d8cd30-12b4-46ab-82b4-56bec7d7a555"
}
EOF
}

resource "github_actions_secret" "azure_client_id" {
  repository      = github_repository.example.name
  secret_name     = "AZURE_CLIENT_ID"
  plaintext_value = "d7f26dec-0b39-43ae-8ae5-48b62cbc9a94"
}

resource "github_actions_secret" "azure_tenant_id" {
  repository      = github_repository.example.name
  secret_name     = "AZURE_TENANT_ID"
  plaintext_value = "44d8cd30-12b4-46ab-82b4-56bec7d7a555"
}

resource "github_actions_secret" "azure_subscription_id" {
  repository      = github_repository.example.name
  secret_name     = "AZURE_SUBSCRIPTION_ID"
  plaintext_value = "6d2e3a80-7b47-4bab-a829-b4f4e73a77f5"
}


