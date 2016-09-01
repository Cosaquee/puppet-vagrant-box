# package { 'git':
#   ensure => installed,
# }
#
# user { 'kkozakowski':
#   ensure     => present,
#   shell      => '/bin/bash',
#   home       => '/home/kkozakowski',
#   managehome => 'true',
#   before     => Package['git']
# }
#
# file { '/home/kkozakowski/hello_text':
#   ensure  => file,
#   mode    => '0644',
#   content => 'Hello world',
#   require => User['kkozakowski']
# }

include js
