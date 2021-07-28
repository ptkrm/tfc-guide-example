data "external" "example" {
  program = ["python", "${path.module}/example.py"]
}

data "http" "request_web" {
  url = "https://patikermo.com/"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

data "http" "request_web2" {
  url = "https://patikermo.com/${urlencode(replace(chomp(data.http.request_web.body),\"\n\",\"\"))}"

  # Optional request headers
  request_headers = {
    User-Agent = "BAM"
  }
}
