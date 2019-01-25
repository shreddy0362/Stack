resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/23"
  tags {
    Name = "OPENAPI_VPC"
  }
}
######################################################################
resource "aws_subnet" "OPENAPI_PUBLIC_SUBNET1(AZa)" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.0.0/25"
  availability_zone = "${var.region}a"
  tags {
    Name = "OPENAPI_PUBLIC_SUBNET1(AZa)"
  }
}
resource "aws_subnet" "OPENAPI_PUBLIC_SUBNRT2(AZa)" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.0.0/25"
  availability_zone = "${var.region}a"
  tags {
    Name = "OPENAPI_PUBLIC_SUBNET2(AZa)"
  }
}

resource "aws_subnet" "OPENAPI_PRIVATE_SUBNET1(AZa)" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.1.0/25"
  availability_zone = "${var.region}a"
  tags {
    Name = "OPENAPI_PRIVATE_SUBNET1(AZa)"
  }
}
resource "aws_subnet" "OPENAPI_PRIVATE_SUBNET2(AZa)" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.1.0/25"
  availability_zone = "${var.region}a"
  tags {
    Name = "OPENAPI_PRIVATE_SUBNET2(AZa)"
  }
}
###################################################################
resource "aws_security_group" "Pubsg" {
  vpc_id     = "${aws_vpc.vpc.id}"
  description = "Allow all inbound traffic"

  ingress {

    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

  ingress {

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
  egress {

    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
}


  tags {
    Name = "Public-SG"
  }
}

resource "aws_security_group" "PriSg" {
  vpc_id = "${aws_vpc.vpc.id}"
  name = "sg_test_web"
  description = "Allow traffic from public subnet"

  ingress {

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
  egress {

    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]

  tags {
    Name = "Private SG"
  }
}
######################################################
