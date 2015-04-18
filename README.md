## Ruby Vagrant Environment

Creates an environment available by Vagrant and provisioned by Puppet to Rails applications.
These features will be installed:

- Curl
- Rvm
- Ruby 1.9.3
- Git
- Nodejs
- RubyGems

## Running

``vagrant up``<br/>
``vagrant ssh server``<br/>

## Dependencies

Depends of a Vagrant plugin called "librarian-puppet".

To install use:

``vagrant plugin install vagrant-librarian-puppet``
