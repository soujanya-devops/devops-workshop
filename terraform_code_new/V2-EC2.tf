provider "aws" {
  region = "us-east-1"
  access_key = "AKIA42DID3JK37KM4R4A"
  secret_key = "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"
}
resource "aws_instance" "demo-server" {
    ami = "ami-0005e0cfe09cc9050"
    instance_type = "t2.micro"
    key_name = "ddp"
    security_groups = ["demo-sg"]
}
resource "aws_security_group" "demo-sg"{
  name = "demo-sg"
  description = "SSH ACCESS"
  ingress{
    description = "ssh access"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
