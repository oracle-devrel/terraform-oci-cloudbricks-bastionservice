# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# bastionservice.tf
#
# Purpose:
# Registry: https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/bastion_bastion


resource "oci_bastion_bastion" "bastion_service" {

  bastion_type     = var.bastion_service_type
  compartment_id   = local.compartment_id
  target_subnet_id = local.private_subnet_ocid

  client_cidr_block_allow_list = var.allowed_client_cidr
  max_session_ttl_in_seconds   = var.bastion_max_session_ttl_in_seconds
  name                         = var.bastion_service_name
}
