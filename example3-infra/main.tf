module "ec2" {
    source  = "./ec2"
    sg      = module.sg.sgid
  
}

module "sg" {
    source = "./sg"
  
}

