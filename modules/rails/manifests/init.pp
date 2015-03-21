class rails {
  require ruby

  $dependencies = ['git', 'nodejs', 'rubygems']

  package { $dependencies:
    ensure   => 'installed'
  }
}
