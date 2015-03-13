class rails {
  require ruby

  exec { "rails":
    command => '/usr/bin/gem install rails -v 4.2.0'
  }

  #exec { "/usr/bin/gem install rails":
  #  timeout => 0,
  #}

  #package { "rails":
  #  ensure   => installed,
  #  provider => 'gem'
  #}
}
