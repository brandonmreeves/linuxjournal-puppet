node 'puppet-test' {
    package { 'vim':
        ensure => 'present'
    }

    package { 'emacs': 
        ensure => 'absent'
    }

    class { 'developer_pc': developer => 'david' }
}

