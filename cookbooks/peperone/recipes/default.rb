include_recipe 'apt'
include_recipe 'ruby_build'
include_recipe 'rbenv'
include_recipe 'nodejs'

package 'git-core'

ruby_build_ruby '2.1.2'

rbenv_ruby '2.1.2' do
  ruby_version '2.1.2'
  global true
end

rbenv_gem 'bundler'
rbenv_gem 'foreman'

execute 'install heroku toolbelt' do
  command 'curl https://toolbelt.herokuapp.com/apt/release.key | apt-key add - && wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh --no-check-certificate | sh'
  action :run
  not_if 'which heroku'
end

