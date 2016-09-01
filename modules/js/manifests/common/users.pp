# == Class: js::common::users
#
class js::common::users {
  user { 'kkozkaowski':
    comment => 'Karol Kozakowski',
    home => '/home/kkozkaowski',
    ensure => present,
    # shell => '/bin/bash',
    # uid => '501',
    # gid => '20',
  }
}
