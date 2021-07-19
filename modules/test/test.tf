data "external" "example" {
  program = ["python", "${path.module}/example.py"]
}
