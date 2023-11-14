locals {
  kms_output = {
    vault = oci_kms_vault.vault
    key   = oci_kms_key.vault_key
  }
}