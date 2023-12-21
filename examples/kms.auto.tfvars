vault = {
  "resource" = {
    vault_id       = "ocid1.vault.oc1.eu-frankfurt-1.ensp6nzgaag3e.abtheljtofogzno5eythf35wurnr5k2x4kjokejshnsvvle5fdr7vrcraeyq"
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaayry53vmsnusccu4pi4synoc3p7aaa47roqkrnzb4d32wzmqwvg6q"
    display_name   = "my-vault"
    vault_type     = "DEFAULT"
  }
}
key = {
  "resource" = {
    key_id              = "ocid1.key.oc1.eu-frankfurt-1.ensp6nzgaag3e.abtheljscx3muboqujttoch3iivskaa3oywpyem6ad4cy3fg7at6zncxaw4q"
    compartment_id      = "ocid1.tenancy.oc1..aaaaaaaayry53vmsnusccu4pi4synoc3p7aaa47roqkrnzb4d32wzmqwvg6q"
    display_name        = "my-key-in-my-vault"
    protection_mode     = "HSM"
    management_endpoint = "https://ensp6nzgaag3e-management.kms.eu-frankfurt-1.oraclecloud.com" # depends on existing vault.management_endpont
    key_shape = {
      algorithm = "AES"
      length    = 32
    }
  }
}
