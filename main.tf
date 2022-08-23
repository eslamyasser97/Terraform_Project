module "V_OIS" {
  source = "./network"
  cidr = var.cidr
  name = var.name
  public1_subnet_cidr = var.public1_subnet_cidr
  public2_subnet_cidr = var.public2_subnet_cidr
  private1_subnet_cidr = var.private1_subnet_cidr
  private2_subnet_cidr = var.private2_subnet_cidr
  az1 = var.az1
  az2 = var.az2
}