namespace :deploy do
  before :starting, :configuration_setup do
    server fetch(:app_server_ip), user: fetch(:app_server_user), roles: %w{web app db}
    set :tmp_dir, "/home/#{fetch(:app_server_user)}/tmp"
    set :deploy_to, "/home/#{fetch(:app_server_user)}/"
    set :application, "vactory_decoupled"
    set :current_directory, 'backend'
    set :app_path, '.'
    set :keep_releases, 5
    append :linked_files, "sites/default/settings.local.php"
    append :linked_dirs, "sites/default/files", "sites/default/private"
  end
end
