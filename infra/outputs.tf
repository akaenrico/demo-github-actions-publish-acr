output "acr_name" {
  description = "Container Registry name."
  value       = azurerm_container_registry.acr.name
}

output "acr_id" {
  description = "ACR ID to configure permissions."
  value       = azurerm_container_registry.acr.id
}

output "acr_login_server" {
  description = "Login server URL for the container registry."
  value       = azurerm_container_registry.acr.login_server
}

output "azure_client_id" {
  description = "Client ID used by GitHub Actions."
  value       = azurerm_user_assigned_identity.github.client_id
}

output "azure_tenant_id" {
  description = "Tenant ID of the identity used by GitHub Actions."
  value       = azurerm_user_assigned_identity.github.tenant_id
}
