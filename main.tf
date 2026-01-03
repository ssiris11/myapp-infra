module "rg" {
  source   = "./modules/resource-group"
  name     = "rg-${var.prefix}-${var.environment}"
  location = var.location
}

module "acr" {
  source              = "./modules/acr"
  name                = "${var.prefix}${var.environment}acr"
  location            = var.location
  resource_group_name = module.rg.name
}
module "cae" {
  source              = "./modules/container-app-env"
  name                = "cae-${var.prefix}-${var.environment}"
  location            = var.location
  resource_group_name = module.rg.name
}

module "container_app" {
  source              = "./modules/container-app"
  name                = "ca-${var.prefix}-${var.environment}-python"
  resource_group_name = module.rg.name
  cae_id              = module.cae.id
  image               = var.container_image
  acr_id              = module.acr.id
}

module "storage" {
  source              = "./modules/storage"
  name                = "st${var.prefix}${var.environment}123"
  location            = var.location
  resource_group_name = module.rg.name
}

module "eventhub" {
  source              = "./modules/eventhub"
  namespace_name      = "eh-${var.prefix}-${var.environment}"
  eventhub_name       = "events"
  location            = var.location
  resource_group_name = module.rg.name
}

module "sql" {
  source        = "./modules/sql"
  server_name   = "sql-${var.prefix}-${var.environment}"
  database_name = "sqldb-${var.prefix}-${var.environment}"

  location            = var.location
  resource_group_name = module.rg.name

  sql_admin_username = var.sql_admin_username
  sql_admin_password = var.sql_admin_password
}

