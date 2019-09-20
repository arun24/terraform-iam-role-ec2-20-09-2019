provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "web" {
  ami           = "ami-02913db388613c3e1"
  instance_type = "t2.micro"
  iam_instance_profile = "${aws_iam_instance_profile.ec2_profile.name}"

  tags = {
    Name = "HelloWorld"
  }
}