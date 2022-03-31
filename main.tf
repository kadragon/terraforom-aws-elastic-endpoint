# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint
resource "aws_vpc_endpoint" "elastic_endpoint" {
  vpc_id             = var.vpc_id
  subnet_ids         = var.subnet_ids
  security_group_ids = [var.internal_sg_id]

  service_name      = var.ptfe_service
  vpc_endpoint_type = "Interface"

  private_dns_enabled = false

  tags = {
    Organization = var.organization
    Name         = "${var.organization}-elastic_endpoint-${var.stage}"
    Stage        = var.stage
  }
}
