module "ec2" {
    source  = "./ec2"
    sg      = module.sg
  
}

module "sg" {
    source = "./sg"
  
}