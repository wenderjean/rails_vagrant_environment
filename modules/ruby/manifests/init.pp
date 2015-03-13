 class ruby {
  include environment

  package { 'curl':
    ensure => installed
  }

  exec { 'get_public_key':
    command => 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3',
    require => Package['curl']
  }

  exec { 'get_rvm':
    command => 'curl -sSL https://get.rvm.io | bash -s stable --ruby',
    timeout => 0,
    require => [Package['curl'], Exec['get_public_key']]
  }
}
