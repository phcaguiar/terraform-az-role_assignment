data "azurerm_resource_group" "resource_group" {
  name = "${var.azure_resource_group}"
}

resource "azurerm_role_assignment" "role_assignment" {
  scope                 = "${data.azurerm_resource_group.resource_group.id}"
  role_definition_name  = "${var.azure_role_definition_name}"
  principal_id          = "${var.azure_role_assignment_principal_id}"
}