provider "github" {}

variable "name" {}
variable "description" {}

resource "github_repository" "github_repo" {
  name               = "${var.name}"
  description        = "${var.description}"
  auto_init          = "true"
  license_template   = "mit"
  gitignore_template = "Terraform"
}

output "git_clone_url" {
  value = "${github_repository.github_repo.git_clone_url}"
}
