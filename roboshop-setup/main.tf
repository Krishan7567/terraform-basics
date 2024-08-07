module "mongodb" {
 source      =   "./ec2"
 COMPONENT   =   "mongodb"
 }

 module "redis" {
 source      =   "./ec2"
 COMPONENT   =   "redis"
 }

 module "test" {
 source      =   "./ec2"
 COMPONENT   =   "test"
 }

 module "master" {
 source      =   "./ec2"
 COMPONENT   =   "master"
 }