# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# variables.tf 
#
# Purpose: The following file declares all variables used in this backend repository

/********** Provider Variables NOT OVERLOADABLE **********/
variable "region" {
  description = "Target region where artifacts are going to be created"
}

variable "tenancy_ocid" {
  description = "OCID of tenancy"
}

variable "user_ocid" {
  description = "User OCID in tenancy."
}

variable "fingerprint" {
  description = "API Key Fingerprint for user_ocid derived from public API Key imported in OCI User config"
}

variable "private_key_path" {
  description = "Private Key Absolute path location where terraform is executed"
}

/********** Provider Variables NOT OVERLOADABLE **********/

/********** Brick Variables **********/

variable "bastion_service_instance_compartment_name" {
  description = "Defines the compartment name where the infrastructure will be created"
  default     = ""
}

variable "bastion_service_network_compartment_name" {
  description = "Defines the compartment where the Network is currently located"
  default     = ""
}

variable "vcn_display_name" {
  description = "VCN Display name to execute lookup"
  default     = ""
}

variable "private_network_subnet_name" {
  description = "Defines the subnet display name where this resource will be created at"
  default     = ""
}

variable "bastion_service_name" {
  description = "Name of the Bastion Service"
  default     = "bastionservice"

}
variable "bastion_service_type" {
  description = "The type of bastion"
  default     = "STANDARD"

}

variable "allowed_client_cidr" {
  description = "A list of address ranges in CIDR notation that you want to allow to connect to sessions hosted by this bastion"
  default     = ["0.0.0.0/0"]

}

variable "bastion_max_session_ttl_in_seconds" {
  description = "The maximum TTL for a session initiated from the bastion"
  default     = 3600
}
/********** Brick Variables **********/
