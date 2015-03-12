class rails {
  require ruby

  package { "nodejs":
    ensure   => installed
  }

  #exec { "/usr/bin/gem install rails":
  # timeout => 0,
  #  logoutput => 'on_failure',
  #  user => 'root'
  #}

  #package { "rails":
  #  ensure   => installed,
  #  provider => 'gem'
  #}
}
