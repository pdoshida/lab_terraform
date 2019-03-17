# profile lab
provider "aws" {
  profile = "lab"
  region = "ap-northeast-1"
}

# Amazon Linux AMI 2018.03.0
resource "aws_instance" "example" {
  ami = "ami-00a5245b4816c38e6"
  instance_type = "t2.nano"
  key_name = "oshida"
  vpc_security_group_ids = ["sg-05072210c3795d431"]
  subnet_id = "subnet-069db2d3770201ad0"
  associate_public_ip_address = true
  ebs_optimized = false

  tags {
    Name = "${format("tf-%02d", count.index + 1)}"
  }

}
