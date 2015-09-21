# puppet-freedns
Configures your dynDNS from [FreeDNS](http://freedns.afraid.org)

## Example

```puppet
class { 'freedns':
  name => 'example.com',
  id   => 'NllUmlneUASDGInQZmI3ZFZEZTk6MTUwNDg1MDE='
}
```

The example above will use the file `/var/log/freedns/example.com` for logging

## Parameters

### id

- **namevar**
Your domain's id. It can be optained by accessing http://freedns.afraid.org/dynamic/. It consists of 40 character hash.

### ensure

Valid values are `present` and `absent`

### logdir


### minute

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-minute

### hour

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-hour

### monthday

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-monthday

### month

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-month

### weekday

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-weekday

### user

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-user

### target

https://docs.puppetlabs.com/references/latest/type.html#cron-attribute-target

## License

WTFPLv2
