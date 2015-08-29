include apt


node 'puppet-test' {
    package { 'vim':
            ensure => 'present'
        }
    package { 'emacs':
            ensure => 'absent'
        }
}



