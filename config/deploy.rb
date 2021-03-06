
require 'rvm/capistrano' # Для работы rvm
require 'bundler/capistrano' # Для работы bundler. При изменении гемов bundler автоматически обновит все гемы на сервере, чтобы они в точности соответствовали гемам разработчика.
require 'capistrano-unicorn'


set :application, 'synergy'
set :rails_env, 'production'

set :domain, 'mkonin@185.4.75.151'
set :deploy_to, "/var/www/#{application}"
set :use_sudo, false
set :normalize_asset_times, false
set :keep_releases, 5

set :rvm_ruby_string, 'ruby-2.1.1'


set :scm, :git
set :repository, 'https://github.com/KernelCorp/synergy.git'
set :branch, 'master' # Ветка из которой будем тянуть код для деплоя.
set :deploy_via, :remote_cache # Указание на то, что стоит хранить кеш репозитария локально и с каждым деплоем лишь подтягивать произведенные изменения. Очень актуально для больших и тяжелых репозитариев.

role :web, domain
role :app, domain
role :db,  domain, :primary => true


after 'deploy', 'deploy:migrate'
after 'deploy:update', 'deploy:cleanup'
after 'deploy:restart', 'unicorn:reload'    # app IS NOT preloaded
after 'deploy:restart', 'unicorn:restart'   # app preloaded
after 'deploy:restart', 'unicorn:duplicate' # before_fork hook implemented (zero downtime deployments)

namespace :deploy do
  task :init_vhost do
    run "ln -s #{deploy_to}/current/config/#{application}.vhost /etc/nginx/sites-enabled/#{application}"
  end
end