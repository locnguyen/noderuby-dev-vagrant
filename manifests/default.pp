node default {
    include nodejs
    include updateyum
    include iptables

    package { 'git':
        ensure => installed
    }

    package { 'curl':
        ensure => installed
    }

    rbenv::install { "vagrant":
        group => "vagrant",
        home  => "/home/vagrant"
    }

    rbenv::compile { "2.0.0-p481":
        user => "vagrant",
        home => "/home/vagrant",
        global => true
    }

    file { "/etc/profile.d/rbenv.sh":
        content => 'export PATH=/home/vagrant/.rbenv/bin:$PATH; eval "$(rbenv init -)"'
    }

    package { 'sass':
        ensure => installed,
        provider => 'gem'
    }

    package { 'grunt-cli':
        ensure => installed,
        provider => 'npm',
        require => Class['nodejs']
    }

    package { 'bower':
        ensure => installed,
        provider => 'npm',
        require => Class['nodejs']
    }
}

class updateyum {
    exec { "yum update":
        path => "/usr/bin",
        command => "yum -y update"
    }
}

class iptables {
    service { "iptables":
        enable => false,
        ensure  => stopped
    }
}
