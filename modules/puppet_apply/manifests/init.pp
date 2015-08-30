
class puppet_apply () {
    file { "/usr/local/bin/puppetApply.sh":
        source => "puppet:///modules/puppet_apply/puppetApply.sh",
        mode  => 'u=wrx,g=r,o=r'
    }

    ->

    cron { "run-puppetApply":
        ensure => 'present',
        command => "/usr/local/bin/puppetApply.sh > /tmp/puppetApply.log 2>&1",
        minute => '*/10',
    }
}


