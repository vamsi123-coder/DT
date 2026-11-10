package { 'apache2':
    ensure => installed,
}

file { '/tmp/puppet-demo.txt':
    ensure  => file,
    content => 'Puppet Manifest Example',
}
