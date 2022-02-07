resource "aws_ami_from_instance" "example" {
  depends_on         = [null_resource.app-deploy]
  name               = "${var.COMPONENT}-${var.APP_VERSION}"
  source_instance_id = aws_instance.ami.id
  tags = {
    Name = "${var.COMPONENT}-${var.APP_VERSION}"
  }
}

