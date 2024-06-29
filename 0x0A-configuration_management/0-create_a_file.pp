# creates new file named school in /tmp dir
file {'school':
      ensure  => 'present',
      mode    => '0744',
      path    => '/tmp/school',
      content => 'I love Puppet',
      group   => 'www-data',
      owner   => 'www-data'
}