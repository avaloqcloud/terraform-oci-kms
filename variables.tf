// Copyright (c) 2023 Avaloq and/or its affiliates.
// Licensed under the Apache 2.0 license shown at https://www.apache.org/licenses/LICENSE-2.0

variable "compartment_id" {
  type        = string
  description = "The OCID of the compartment."
}

variable "display_name" {
  type        = string
  description = "Display name of vault and key get derived from this value."
}