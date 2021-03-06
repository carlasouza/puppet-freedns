# puppet-freedns

Configures your dynDNS from [FreeDNS](http://freedns.afraid.org)

## Example

```puppet
class { 'freedns':
  name => 'example.com',
  id   => 'NllUmlneUASDGInQZmI3ZFZEZTk6MTUwNDg1MDE='
}
```

The example above will run every 5 min and generates the log file `/var/log/freedns/example.com`.

## Masterless usage

```bash
mkdir -p modules && git clone https://github.com/carlasouza/puppet-freedns.git modules/freedns
sudo puppet apply --modulepath ./modules -e "class { 'freedns': name => 'example.com', id => 'NllUmlneUASDGInQZmI3ZFZEZTk6MTUwNDg1MDE='}"
```

## Parameters

### name

The domain to be updated. Defaults to `id`.

### id

Your domain's id. It can be optained by accessing http://freedns.afraid.org/dynamic/. It consists of 40 character hash.

### ensure

Valid values are `present` and `absent`.

Defaults to `present`

### logdir

Directory where log will be stored. The logfile's name defaults to `$name`. In case `$name` is nil, `$id` will be used.

Defaults to `/var/log/freenode`

### minute

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-minute

Defaults to `*/5`.

### hour

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-hour

Defaults to `*`.

### monthday

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-monthday

Defaults to `*`.

### month

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-month

Defaults to `*`.

### weekday

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-weekday

Defaults to `*`.

### user

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-user

Defaults to `root`.

### target

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-target

Defaults to `root`.

## TODO

Logrotate

## License

WTFPLv2
