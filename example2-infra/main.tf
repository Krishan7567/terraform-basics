module "ec2" {
    source  = "./ec2"
    sg      = module.sgid
  
}

module "sg" {
    source = "./sg"
  
}