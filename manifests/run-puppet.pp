file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/  mode => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour =>  '*',
  minute => '*/15',
  require => File['usr/local/bin/run-puppet']
}


