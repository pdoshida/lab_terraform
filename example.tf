# profile lab
provider "aws" {
  profile = "lab"
  region = "ap-northeast-1"
}

# Amazon Linux AMI 2018.03.0
resource "aws_instance" "example" {
  ami           = "ami-00a5245b4816c38e6"
  instance_type = "t2.nano"

  tags {
    Name = "${format("tf-%02d", count.index + 1)}"
  }
}
