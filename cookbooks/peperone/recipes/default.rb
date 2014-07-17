include_recipe 'apt'
include_recipe 'ruby_build'
include_recipe 'rbenv'

package 'git-core'

ruby_build_ruby '2.1.2'

rbenv_ruby '2.1.2' do
  ruby_version '2.1.2'
  global true
end

rbenv_gem 'bundler'
rbenv_gem 'foreman'

execute "install heroku toolbelt" do
  command "wget -qO- https://toolbelt.heroku.com/install.sh | sh"
  action :run
  not_if { ::File.exists?("/usr/local/heroku/bin/heroku") }
end

