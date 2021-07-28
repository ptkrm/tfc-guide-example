data "external" "example" {
  program = ["python", "${path.module}/example.py"]
}

data "http" "request_web" {
  url = "https://patikermo.com/httpfun"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

data "http" "request_web2" {
  url = "https://patikermo.com/httpfunpart2"

  # Optional request headers
  request_headers = {
    User-Agent = "OOOO"
  }
}
