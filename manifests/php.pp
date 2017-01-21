class agorabase::php
{
    class { '::php::globals':
      php_version => '7.0',
      config_root => '/etc/php/7.0',
    }->
    class { '::php':
      ensure       => latest,
      manage_repos => true,
      fpm          => true,
      dev          => false,
      composer     => true,
      pear         => true,
      phpunit      => false,

      extensions => {
        curl  => { },
        xsl => { },
        mcrypt => { },
      },
    }

    package { 'php-curl':
      ensure => 'latest',
      require => Class['::php'],
    }

    package { 'php-mbstring':
      ensure => 'latest',
      require => Class['::php'],
    }

    package { 'php7.0-mcrypt':
      ensure => 'latest',
      require => Class['::php'],
    }

    package { 'php-mysql':
      ensure => 'latest',
      require => Class['::php'],
    }
}
