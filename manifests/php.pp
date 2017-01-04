class agorabase::php
{
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

    package { 'php-xsl':
      ensure => 'latest',
      require => Class['::php'],
    }

    package { 'php-mcrypt':
      ensure => 'latest',
      require => Class['::php'],
    }
}
