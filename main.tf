resource "oci_kms_vault" "vault" {
  compartment_id = var.compartment_id
  display_name   = "${var.display_name}-vault"
  vault_type     = "DEFAULT"
}

resource "oci_kms_key" "vault_key" {
  compartment_id  = var.compartment_id
  display_name    = "${var.display_name}-vault-key"
  protection_mode = "HSM"
  key_shape {
    algorithm = "AES"
    length    = 32
  }
  management_endpoint = oci_kms_vault.vault.management_endpoint
}