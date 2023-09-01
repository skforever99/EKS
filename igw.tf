resource "aws_internet_gateway" "igw" {
  vpc_id = "vpc-03553f15222b16df7"

  tags = {
    Name = "igw"
  }
}
