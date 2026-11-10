class demo {
    file { '/tmp/puppet-demo.txt':
        ensure  => file,
        content => 'Puppet configuration applied',
    }
}

include demo
