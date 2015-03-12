class ruby {
  require environment

  package { 'curl':
    ensure => installed
  }

  exec { 'get_public_key':
    command => 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3',
    require => Package['curl']
  }

  exec { 'get_rvm':
    command  => '\curl -sSL https://get.rvm.io | bash -s stable --ruby',
    require => Exec['get_public_key']
  }

  #  package { "python-software-properties":
  #  ensure => installed
  #}

  #exec { "Adding ruby repository":
  #  command => "apt-add-repository ppa:brightbox/ruby-ng",
  #  path    => '/usr/bin/',
  #  require => Package['python-software-properties']
  #}

  #package { "ruby2.1":
  #  ensure  => installed,
  #  require => Exec['Adding ruby repository']
  #}

  #package { "ruby2.1-dev":
  #  ensure  => installed,
  #  require => Package['ruby2.1']
  #}
}
