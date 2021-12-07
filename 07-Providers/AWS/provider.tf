# Configure a Cloud Provider
provider "aws" {
  region = "us-east-1"
  version = ">=3.7,<=3.11"
}

provider "aws" {
  region = "us-west-1"
  version = ">=3.7,<=3.11"
  alias   = "us-west-1"
}
