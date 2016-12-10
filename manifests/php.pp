class agorabase::php
{
    $packages = [
        "php5",
        "php5-cli",
        "php5-mysql",
        "php-pear",
        "php5-dev",
        "php-apc",
        "php5-mcrypt",
        "php5-gd",
        "php5-imagick",
        "php5-curl",
        "libapache2-mod-php5",
        "php5-memcache",
        "php5-memcached",
        "php5-pgsql",
        "php5-sqlite",
        "php5-xsl"
    ]

    package
    {
        $packages:
            ensure  => latest,
            require => [Exec['apt-get update'], Package['python-software-properties']]
    }

    package { "php5-xdebug":
      ensure => absent,
    }

    file
    {
        "/etc/php5/apache2/php.ini":
            ensure  => present,
            owner   => root, group => root,
            notify  => Service['apache2'],
            content => template('agorabase/php.ini.erb'),
            require => [Package['php5'], Package['apache2']],
    }

    file
    {
        "/var/log/php/":
            ensure  => "directory",
            owner   => root, group => root,
            require => [Package['php5'], Package['apache2']],
    }

    file
    {
        "/etc/php5/cli/php.ini":
            ensure  => present,
            owner   => root, group => root,
            notify  => Service['apache2'],
            content => template('agorabase/cli.php.ini.erb'),
            require => [Package['php5']],
    }
}
