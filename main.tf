resource "azurerm_role_assignment" "role_assignment" {
  scope                = "${var.azure_resource_group}"
  role_definition_name = ""
  principal_id         = ""
}