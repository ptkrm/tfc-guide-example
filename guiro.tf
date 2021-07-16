data "external" "example" {
  program = ["python", "${path.module}/cool2.py"]
}
