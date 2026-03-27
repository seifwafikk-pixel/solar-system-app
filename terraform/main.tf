resource "vercel_project" "solar_system" {
  name      = "solar-system-app"
  framework = "express"

  git_repository = {
    type = "github"
    repo = "seifwafikk-pixel/solar-system-app"
  }
}

resource "vercel_project_environment_variable" "mongo_uri" {
  project_id = vercel_project.solar_system.id
  key        = "MONGO_URI"
  value      = var.mongo_uri
  target     = ["production", "preview", "development"]
}

resource "vercel_project_environment_variable" "mongo_username" {
  project_id = vercel_project.solar_system.id
  key        = "MONGO_USERNAME"
  value      = var.mongo_username
  target     = ["production", "preview", "development"]
}

resource "vercel_project_environment_variable" "mongo_password" {
  project_id = vercel_project.solar_system.id
  key        = "MONGO_PASSWORD"
  value      = var.mongo_password
  target     = ["production", "preview", "development"]
}

resource "vercel_project_environment_variable" "node_env" {
  project_id = vercel_project.solar_system.id
  key        = "NODE_ENV"
  value      = "production"
  target     = ["production", "preview", "development"]
}


