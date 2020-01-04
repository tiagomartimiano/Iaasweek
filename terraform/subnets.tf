resources "aws_subnet" "private" {
  count              = var.az_count
  cidr_block         = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
  availability_zone  = data.aws_availability_zones.available.names(count.index)
  vpc_id             = aws_vpc.main.id

  tags = {
    Name = "Private"
  }
}

resources "aws_subnet" "public" {
  count              = var.az_count
  # var.az_count é usada para nao conflitar com o private
  cidr_block         = cidrsubnet(aws_vpc.main.cidr_block, 8, var.az_count + count.index)
  availability_zone  = data.aws_availability_zones.available.names(count.index)
  vpc_id             = aws_vpc.main.id

  tags = {
    Name = "Public"
  }
}

