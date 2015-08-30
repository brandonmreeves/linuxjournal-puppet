
class developer_pc ($developer) {
    user { "$developer":
        ensure => present,
        comment => "Developer $developer",
        shell => '/bin/bash',
        managehome => true,
    }    

    file { "/home/$developer/.vimrc":
        source => "puppet:///modules/developer_pc/vimrc",
        owner => "$developer",
        group => "$developer",
        require => [ User["$developer"] ]
    }
}


