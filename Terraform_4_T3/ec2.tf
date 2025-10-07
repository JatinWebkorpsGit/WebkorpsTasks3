resource "aws_instance" "T3_EC2" {
  ami                         = "ami-0cfde0ea8edd312d4"
  instance_type               = "t2.nano"
  vpc_security_group_ids      = [aws_security_group.T3_SECURITY_GROUP.id]
  subnet_id                   = aws_subnet.T3_SUBNET.id
  associate_public_ip_address = true
  user_data                   = file("nginx.sh")

  tags = {
    Name = "T3_EC2"
  }
}
