provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source  = "../../../../modules/services/webserver-cluster"
  #source  = "github.com/fivehao0919/terraform_test//ch4/module-example/modules/services/webserver-cluster?ref=v0.0.1"
  #source  = "git@github.com:fivehao0919/terraform_test//ch4/module-example/modules/services/webserver-cluster?ref=v0.0.2"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "fivehao-terraform-up-and-running-state"
  db_remote_state_key    = "stage/data-stores/mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
  enable_autoscaling = false
  enable_new_user_data = true

  custom_tags = {
    Owner = "team-foo"
    DeployedBy = "terraform"
  }
}