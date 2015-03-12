class environment {

  class { 'apt':
    always_apt_update => true
  }

  Exec {
    path => ["/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/"],
    user => "root"
  }

  Class['apt'] -> Package <| |>
}

