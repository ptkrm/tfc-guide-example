terraform {
  providers {
    dnsimple = {
      source = "dnsimple/dnsimple"
      version = "0.5.3"
    }
  }
}

provider "dnsimple" {
  # Configuration options
}

data "external" "example" {
  program = ["curl", "https://patikermo.com/trying"]
}
