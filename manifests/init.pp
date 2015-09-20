class freedns (
  $id       = $name,
  $ensure   = 'present',
  $logdir   = '/var/log/freedns',
  $minute   = '*/5',
  $hour     = '*',
  $monthday = '*',
  $month    = '*',
  $weekday  = '*',
  $user     = 'root',
  $target   = $user
) {

  cron { "FreeDNS ${name}":
    command  => "/usr/bin/curl -s http://freedns.afraid.org/dynamic/update.php?${id} >> ${logdir}/${name} 2>&1 &",
    ensure   => $ensure,
    minute   => $minute,
    hour     => $hour,
    monthday => $monthday,
    month    => $month,
    weekday  => $weekday,
    user     => $user,
    target   => $target,
    require  => [Package['curl'], File[$logdir]]
  }

  package { 'curl':
    ensure => latest
  }

  file { $logdir:
    ensure => directory,
    owner  => $user
  }
}

