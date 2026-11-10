class mymodule {
    file { '/tmp/module-demo.txt':
        ensure  => file,
        content => 'Puppet Module Example',
    }
}
