resource "azurerm_user_assigned_identity" "github" {
  name                = "id-github-acr-lab"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

resource "azurerm_federated_identity_credential" "github_main" {
  name                      = "github-main"
  user_assigned_identity_id = azurerm_user_assigned_identity.github.id

  issuer   = "https://token.actions.githubusercontent.com"
  audience = ["api://AzureADTokenExchange"]
  subject  = "repo:akaenrico@39354620/demo-github-actions-publish-acr@1369049105:ref:refs/heads/main"
}

resource "azurerm_role_assignment" "github_acr_push" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPush"
  principal_id         = azurerm_user_assigned_identity.github.principal_id
  principal_type       = "ServicePrincipal"
}
