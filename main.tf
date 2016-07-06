#

# DO NOT DELETE THESE LINES!

#

# Your subnet ID is:

#

#     subnet-9e15f8f6

#

# Your security group ID is:

#

#     sg-dca200b4

#

# Your AMI ID is:

#

#     ami-74ee001b

#

# Your Identity is:

#

#     totaljobs-cfcd208495d565ef66e7dff9f98764da

#

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

resource "aws_instance" "test-server" {
  ami                    = "ami-74ee001b"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-9e15f8f6"
  count                  = "1"
  vpc_security_group_ids = ["sg-dca200b4"]

  tags {
    Identity = "totaljobs-cfcd208495d565ef66e7dff9f98764da"
    Yellow   = "Banana"
    Green    = "Cat"
  }
}
