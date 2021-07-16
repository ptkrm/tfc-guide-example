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
