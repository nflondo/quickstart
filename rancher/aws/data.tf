# Data for AWS module

# AWS data
# ----------------------------------------------------------

# Use latest SLES 15 SP3
data "aws_ami" "sles" {
  most_recent = true
  owners      = ["013907871322"] # SUSE

  filter {
    name   = "name"
    values = ["suse-sles-15-sp5*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

data "aws_ami" "windows" {
  most_recent = true
#  owners      = ["801119661308"] #Amazon
  owners      = ["amazon"] #Amazon
  filter {
    name   = "name"
    values = ["Windows_Server-2019-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}