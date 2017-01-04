class agorabase::php
{
    class { '::php':
      ensure       => latest,
      manage_repos => true,
      fpm          => true,
      dev          => true,
      composer     => true,
      pear         => true,
      phpunit      => false,

      extensions => {
        curl  => { },
        xsl => { },
        mcrypt => { },
        zip => { },
      },
    }
}
