set :application, "lms-ruby"
set :repo_url, "https://github.com/belkan1/lms-ruby.git"

# Deploy to the user's home directory
set :deploy_to, "/home/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5