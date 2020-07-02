namespace :deploy do
  before :starting, :configuration_setup_drush do
    SSHKit.config.command_map[:drush] = "drush"
  end
end
