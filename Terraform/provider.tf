provider "aws" {
  region = DESTINATION_REGION
  alias = "spoke1-region1"
  assume_role {
    role_arn = "arn:aws:iam::${var.spoke_account}:role/TerraformSpokeRole"
  }
}

provider "aws" {
  region = DESTINATION_REGION
}