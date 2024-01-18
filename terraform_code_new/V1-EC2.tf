provider "aws" {
  region = "us-east-1"
  access_key = "AKIA42DID3JKZOUUAMOE"
  secret_key = "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"
}
resource "aws_instance" "demo-server" {
    ami = "ami-0005e0cfe09cc9050"
    instance_type = "t2.micro"
    key_name = "ddp"
}
