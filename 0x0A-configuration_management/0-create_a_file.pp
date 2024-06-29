$content = 'I love Puppet'

file {'school':
      ensure  => 'present',
      mode    => '0744',
      path    => '/tmp/school',
      content => $content,
      group   => 'www-data',
      owner   => 'www-data'
}