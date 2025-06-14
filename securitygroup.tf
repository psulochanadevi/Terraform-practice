resource "aws_security_group" "web" {
  name        = var.web_security_group.name
  vpc_id      = aws_vpc.base.id
  description = var.web_security_group.description
  tags = {
    Name = var.web_security_group.name
  }

  depends_on = [aws_vpc.base]
}

resource "aws_vpc_security_group_ingress_rule" "web" {
  count             = length(var.web_security_group.ingress_rules)
  security_group_id = aws_security_group.web.id
  ip_protocol       = var.web_security_group.ingress_rules[count.index].ip_protocol
  from_port         = var.web_security_group.ingress_rules[count.index].from_port
  cidr_ipv4         = var.web_security_group.ingress_rules[count.index].cidr_ipv4
  to_port           = var.web_security_group.ingress_rules[count.index].to_port
  description       = var.web_security_group.ingress_rules[count.index].description
  depends_on        = [aws_security_group.web]

}

resource "aws_vpc_security_group_egress_rule" "web" {
  count             = length(var.web_security_group.egress_rules)
  security_group_id = aws_security_group.web.id
  ip_protocol       = var.web_security_group.egress_rules[count.index].ip_protocol
  from_port         = var.web_security_group.egress_rules[count.index].from_port
  cidr_ipv4         = var.web_security_group.egress_rules[count.index].cidr_ipv4
  to_port           = var.web_security_group.egress_rules[count.index].to_port
  description       = var.web_security_group.egress_rules[count.index].description
  depends_on        = [aws_security_group.web]

}


resource "aws_security_group" "app" {
  name        = var.app_security_group.name
  vpc_id      = aws_vpc.base.id
  description = var.app_security_group.description
  tags = {
    Name = var.app_security_group.name
  }

  depends_on = [aws_vpc.base]
}

resource "aws_vpc_security_group_ingress_rule" "app" {
  count             = length(var.app_security_group.ingress_rules)
  security_group_id = aws_security_group.app.id
  ip_protocol       = var.app_security_group.ingress_rules[count.index].ip_protocol
  from_port         = var.app_security_group.ingress_rules[count.index].from_port
  cidr_ipv4         = var.app_security_group.ingress_rules[count.index].cidr_ipv4
  to_port           = var.app_security_group.ingress_rules[count.index].to_port
  description       = var.app_security_group.ingress_rules[count.index].description
  depends_on        = [aws_security_group.app]

}

resource "aws_vpc_security_group_egress_rule" "app" {
  count             = length(var.app_security_group.egress_rules)
  security_group_id = aws_security_group.app.id
  ip_protocol       = var.app_security_group.egress_rules[count.index].ip_protocol
  from_port         = var.app_security_group.egress_rules[count.index].from_port
  cidr_ipv4         = var.app_security_group.egress_rules[count.index].cidr_ipv4
  to_port           = var.app_security_group.egress_rules[count.index].to_port
  description       = var.app_security_group.egress_rules[count.index].description
  depends_on        = [aws_security_group.app]

}



resource "aws_security_group" "db" {
  name        = var.db_security_group.name
  vpc_id      = aws_vpc.base.id
  description = var.db_security_group.description
  tags = {
    Name = var.db_security_group.name
  }

  depends_on = [aws_vpc.base]
}

resource "aws_vpc_security_group_ingress_rule" "db" {
  count             = length(var.db_security_group.ingress_rules)
  security_group_id = aws_security_group.db.id
  ip_protocol       = var.db_security_group.ingress_rules[count.index].ip_protocol
  from_port         = var.db_security_group.ingress_rules[count.index].from_port
  cidr_ipv4         = var.db_security_group.ingress_rules[count.index].cidr_ipv4
  to_port           = var.db_security_group.ingress_rules[count.index].to_port
  description       = var.db_security_group.ingress_rules[count.index].description
  depends_on        = [aws_security_group.db]

}

resource "aws_vpc_security_group_egress_rule" "db" {
  count             = length(var.db_security_group.egress_rules)
  security_group_id = aws_security_group.db.id
  ip_protocol       = var.db_security_group.egress_rules[count.index].ip_protocol
  from_port         = var.db_security_group.egress_rules[count.index].from_port
  cidr_ipv4         = var.db_security_group.egress_rules[count.index].cidr_ipv4
  to_port           = var.db_security_group.egress_rules[count.index].to_port
  description       = var.db_security_group.egress_rules[count.index].description
  depends_on        = [aws_security_group.db]

}