# resource "aws_elasticache_subnet_group" "elasticache_subnet_group" {

#   name       = "terraform-elasticache-subnets"
#   subnet_ids = ["${module.Network.private_subnet_1_id}", "${module.Network.private_subnet_2_id}"]
# }

# resource "aws_elasticache_cluster" "terraform_elasticache_cluster" {
#   cluster_id           = "terraform-cluster-example"
#   engine               = "redis"
#   node_type            = "cache.t2.micro"
#   num_cache_nodes      = 1
#   parameter_group_name = "default.redis3.2"
#   engine_version       = "3.2.10"
#   port                 = 6379
#   subnet_group_name    = aws_elasticache_subnet_group.elasticache_subnet_group.name
# }