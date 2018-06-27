provider "github" {}

module "dockerfile_terraform" {
  source      = "modules/github_repo"
  name        = "dockerfile-terraform-lc"
  description = "DockerFile for building Terraform Image"
}

module "dockerfile_terraform_provider_aws" {
  source      = "modules/github_repo"
  name        = "dockerfile-terraform-provider-aws-lc"
  description = "DockerFile for building Terraform AWS Provider Image"
}

module "tf_github_creator" {
  source      = "modules/github_repo"
  name        = "tf-github-repo-maker"
  description = "Terraform project to create github repo's for Terraform."
}

output "git_clone_url_dockerfile_terraform" {
  value = "${module.dockerfile_terraform.git_clone_url}"
}

output "git_clone_url_dockerfile_terraform_provider_aws" {
  value = "${module.dockerfile_terraform_provider_aws.git_clone_url}"
}

output "git_clone_url_tf_github_creator" {
  value = "${module.tf_github_creator.git_clone_url}"
}
