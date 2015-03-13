class environment {

  class { 'apt':
    always_apt_update => true
  }

  Class['apt'] -> Package <| |>
}

