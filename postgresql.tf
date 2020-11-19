module "postgresql" {
  source                       = "./modules/repository"
  name                         = "postgresql"
  cookbook_team                = github_team.postgresql.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "postgresql" {
  name        = "postgresql"
  description = "PostgreSQL Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "postgresql-maintainer-1" {
  team_id  = github_team.postgresql.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "postgresql-maintainer-2" {
  team_id  = github_team.postgresql.id
  username = "teknofire"
  role     = "maintainer"
}

