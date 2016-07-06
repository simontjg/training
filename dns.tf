

#


# DO NOT DELETE THESE LINES!


#


# Your DNSimple email is:


#


#     sethvargo+terraform@gmail.com


#


# Your DNSimple token is:


#


#     sRFRF5ltrFulE4AB6iRgiRshoIWqiuUF


#


# Your Identity is:


#


#     totaljobs-cfcd208495d565ef66e7dff9f98764da


#
# Configure the DNSimple provider
provider "dnsimple" {
    token = "${var.dns_simple_token}"
    email = "${var.dns_simple_email}"
}

#resource "dnsimple_record" "blah" {
#  domain = "terraform.rocks"
#  name   = "totaljobs-cfcd208495d565ef66e7dff9f98764da"
#  value  = "${aws_instance.test-server.0.public_ip}"
#  type   = "A"
#  ttl    = 60
#}


