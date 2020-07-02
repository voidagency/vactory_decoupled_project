namespace :deploy do
  before :starting, :configuration_setup_composer do
    SSHKit.config.command_map[:composer] = "composer"
    set :composer_install_flags, '--no-dev --no-interaction --quiet --optimize-autoloader'
    set :composer_roles, :all
    set :composer_working_dir, -> { fetch(:release_path) }
    set :composer_dump_autoload_flags, '--optimize'
  end
end
