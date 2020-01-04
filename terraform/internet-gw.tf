resource "aws_internet_gateway" "aws" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name "iaasweek"
  }
}
