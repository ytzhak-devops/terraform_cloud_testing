
provider "aws" {
  
  region     = "us-east-1"
}


resource "aws_instance" "ytzhak_cloud_server2" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
lifecycle {
  prevent_destroy = true
  ignore_changes = ["ami",]
  }

}
