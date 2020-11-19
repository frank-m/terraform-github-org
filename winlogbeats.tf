module "winlogbeats" {
  source                       = "./modules/repository"
  name                         = "winlogbeats"
  cookbook_team                = github_team.winlogbeats.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "winlogbeats" {
  name        = "winlogbeats"
  description = "winlogbeats Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "winlogbeats-maintainer-1" {
  team_id  = github_team.winlogbeats.id
  username = "tas50"
  role     = "maintainer"
}
