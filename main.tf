module "kms-vault" {
  source = "git::https://github.com/avaloqcloud/terraform-oci-kms-vault?ref=v0.0.2"
  vault = {
    # Required
    compartment_id = var.vault.compartment_id
    display_name   = var.vault.display_name
    vault_type     = var.vault.vault_type
    # Optional
    defined_tags  = var.vault.defined_tags
    freeform_tags = var.vault.freeform_tags
  }
}

module "kms-key" {
  source = "git::https://github.com/avaloqcloud/terraform-oci-kms-key?ref=v0.0.1"
  key = {
    #Required
    compartment_id = var.key.compartment_id
    display_name   = var.key.display_name
    key_shape = {
      #Required
      algorithm = var.key.key_shape.algorithm
      length    = var.key.key_shape.length

      #Optional
      curve_id = try(var.key.key_shape.curve_id, null)
    }
    management_endpoint = module.kms-vault.vault.management_endpoint # implicit dependency
    #Optional
    defined_tags    = var.key.defined_tags
    freeform_tags   = var.key.freeform_tags
    protection_mode = var.key.protection_mode
  }
}