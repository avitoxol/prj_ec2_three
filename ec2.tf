resource "aws_instance" "web" {
    ami = data.aws_ami.my_image.id
    instance_type = var.type[0]
    vpc_security_group_ids = [aws_security_group.websg.id]

    user_data = <<-EOF
                      #!/bin/bash
                      yum install httpd -y
                      service httpd start
                      chkconfig httpd on
    EOF

    tags = {
      Name = "web"
    }
}
