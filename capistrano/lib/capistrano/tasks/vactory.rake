namespace :vactory do
  desc 'Deploy process'
  task :deploy do
    on roles(:app) do
      within release_path.join(fetch(:app_path)) do
        info "Clear Cache"
        execute :drush, 'cache-clear drush'
        execute :drush, 'cr'
      end
    end
  end
   desc 'Apply Permissions'
   task :permissions do
       on roles(:app) do
           info "Apply Permissions -d 755 -f 644"
           within release_path.join(fetch(:app_path)) do
               info "#{release_path}/"
               execute :find, "#{release_path}/", " -type d -exec chmod u=rwx,g=rx,o=rx '{}' ';'"
               execute :find, "#{release_path}/", " -type f -exec chmod u=rw,g=r,o=r '{}' ';'"
           end
       end
   end

  after 'deploy:updated', 'vactory:deploy'
  after 'deploy:finished', 'vactory:permissions'
end
