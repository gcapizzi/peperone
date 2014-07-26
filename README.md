# Peperone

Simple web time tracking tool [http://peperone.me](http://peperone.me)

## Development

1. [VirtualBox](https://www.virtualbox.org)
2. [Vagrant](http://www.vagrantup.com)

### Using the development VM

     vagrant plugin install vagrant-omnibus
     vagrant plugin install vagrant-berkshelf --plugin-version=2.0.1
     vagrant up
     vagrant ssh
     bundle install
     foreman start
