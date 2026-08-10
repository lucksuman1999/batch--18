virtual_network = {

  vnet1 = {

    name                = "vnet-igneous"
    location            = "centralindia"
    resource_group_name = "Igneous"
    address_space       = ["10.0.0.0/16"]

  }

  vnet2 = {
    name                = "vnet-sedimentary"
    location            = "westus"
    resource_group_name = "Sedimantary"
    address_space       = ["10.0.0.0/16"]
  }

}