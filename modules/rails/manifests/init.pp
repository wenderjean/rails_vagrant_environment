class rails {
  require ruby

  $dependencies = ['git', 'rubygems']

  package { $dependencies:
    ensure   => 'installed'
  }

  exec { 'obtain_app':
    command => 'git clone https://github.com/wenderjean/Angular_Rails /home/vagrant/app',
    require => Package['git']
  }
}
