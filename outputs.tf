# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# output.tf 
#
# Purpose: The following file passes all outputs of the brick

output "bastionservice" {
  description = "Bastion Service object"
  value = oci_bastion_bastion.bastion_service
}
