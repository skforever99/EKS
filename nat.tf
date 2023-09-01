resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = "subnet-0c9b8983a5afc1a2f"

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.igw]
}
