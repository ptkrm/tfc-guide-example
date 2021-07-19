terraform {
  required_providers {
    dnsimple = {
      source = "dnsimple/dnsimple"
      version = "0.5.3"
    }
  }
}

provider "dnsimple" {
  # Configuration options
}

data "external" "example2" {
  program = ["curl", "https://patikermo.com/trying"]
}
