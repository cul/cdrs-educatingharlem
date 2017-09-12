lock "3.9"

set :department, 'cdrs'
set :application, 'educatingharlem'
set :remote_user, "#{fetch(:department)}serv"
set :repo_url, "git@github.com:cul/#{fetch(:department)}-#{fetch(:application)}.git"
set :deploy_to, "/opt/www/#{fetch(:department)}/#{fetch(:application)}_#{fetch(:stage)}"
set :ssh_options, { :forward_agent => true }

set :keep_releases, 2

######################
# WordPress settings #
######################

# Set up important directories
set :wp_docroot, "#{fetch(:deploy_to)}/wp_docroot"
set :wp_data_path, "#{fetch(:deploy_to)}/wp_data"
set :multisite, false
set :title, 'Educating Harlem'

# List custom plugins and themes to pull in from repo
