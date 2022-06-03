provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = "us-south"
}
resource "ibm_resource_group" "group" {
  name = "test"
}
