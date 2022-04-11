module "test_security_group" {
  source        = "../../"
  vpc_id        = var.vpc_config.vpc_id
  ingress_rules = var.security_group.ingress_rules
  egress_rules  = var.security_group.egress_rules
  labels = merge(
    { component = "componentName" },
    var.labels
  )
}