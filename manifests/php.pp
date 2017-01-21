class agorabase::php
{
    class { '::php::globals':
      php_version => '7.0',
      config_root => '/etc/php/7.0',
    }->
    class { '::php':
      ensure       => latest,
      manage_repos => true,
      fpm          => false,
      dev          => false,
      composer     => false,
      pear         => true,
      phpunit      => false,

      extensions => {
        curl  => { },
        xsl => { },
        mcrypt => { },
        mbstring => { },
        mysql => { },
      },
    }
}
