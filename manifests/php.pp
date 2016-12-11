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
        "php5-xdebug",
        "php5-memcache",
        "php5-memcached",
        "php5-pgsql",
        "php5-sqlite",
        "php5-xsl"
    ]

    class { '::php':
      ensure       => latest,
      manage_repos => true,
      fpm          => true,
      dev          => true,
      composer     => true,
      pear         => true,
      phpunit      => false,

      extensions => {
        cli   => { },
        mysql => { },
        pear  => { },
        curl  => { },
      },
    }
}
