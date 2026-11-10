package { 'apache2':
    ensure => installed,
}

file { '/var/www/html/index.html':
    ensure  => file,
    content => '<h1>Hello from Puppet</h1>',
}

service { 'apache2':
    ensure  => running,
    enable  => true,
    require => Package['apache2'],
}
