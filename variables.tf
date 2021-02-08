variable location {
  description = "Enter a location"
}

variable fw_prefix {
  description = "Prefix to add to all resources added in the firewall resource group"
  default     = ""
}

variable fw_license {
  description = "VM-Series license: byol, bundle1, or bundle2"
  # default = "byol"   
  # default = "bundle1"  
  # default = "bundle2"
}

variable global_prefix {
  description = "Prefix to add to all resource groups created.  This is useful to create unique resource groups within a shared Azure subscription"
}

#-----------------------------------------------------------------------------------------------------------------
# Azure Network Resource Group

variable hubnetresourcegroup {
}

variable hubprefixpalo {
}

#-----------------------------------------------------------------------------------------------------------------
# Storage Account

variable palostorageacctname {
}

#-----------------------------------------------------------------------------------------------------------------
# Transit VNET variables

variable transit_prefix {
}

variable transit_vnet_cidr {
}

variable transit_subnet_names {
  type = list(string)
}

variable transit_subnet_cidrs {
  type = list(string)
}

#-----------------------------------------------------------------------------------------------------------------
# VM-Series variables

variable fw_count {
}

variable fw_nsg_prefix {
}

variable fw_panos {
}

variable fw_username {
}

variable fw_password {
}

variable fw_internal_lb_ip {
}

#-----------------------------------------------------------------------------------------------------------------
# Spoke variables

variable spoke_username {
}

variable spoke_password {
}

variable spoke_udrs {
}

variable spoke1_prefix {
  description = "Prefix to add to all resources added in spoke1's resource group"
}

variable spoke1_vm_count {
}

variable spoke1_vnet_cidr {
}

variable spoke1_subnet_cidrs {
  type = list(string)
}

variable spoke1_internal_lb_ip {
}

variable spoke2_prefix {
  description = "Prefix to add to all resources added in spoke2's resource group"
}

variable spoke2_vm_count {
}

variable spoke2_vnet_cidr {
}

variable spoke2_subnet_cidrs {
  type = list(string)
}

variable tags {
  description = "The tags to associate with newly created resources"
  type        = map(string)

  default = {}
}

#-----------------------------------------------------------------------------------------------------------------
# Azure environment variables

variable client_id {
  description = "Azure client ID"
  default = ""
}

variable client_secret {
  description = "Azure client secret"
  default = ""
}

variable subscription_id {
  description = "Azure subscription ID"
  default = ""
}

variable tenant_id {
  description = "Azure tenant ID"
  default = ""
}