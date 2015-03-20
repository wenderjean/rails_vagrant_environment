 class ruby {
  include environment

  package { 'curl':
    ensure => installed
  }

  exec { 'get_public_key':
    command => 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3',
    require => Package['curl']
  }

  exec { 'install_rvm':
    command => 'curl -sSL https://get.rvm.io | bash -s stable',
    timeout => 0,
    require => Exec['get_public_key']
  }

  exec { 'install_ruby':
    command => '/usr/local/rvm/bin/rvm install 1.9.3',
    timeout => 0,
    require => Exec['install_rvm']
  }

  exec { 'set_ruby_as_default':
    command => '/usr/local/rvm/bin/rvm alias create default 1.9.3 & bash -c "source /usr/local/rvm/scripts/rvm"',
    require => Exec['install_ruby']
  }
}
