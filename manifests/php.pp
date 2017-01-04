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
}
