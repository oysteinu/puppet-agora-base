class agorabase {
	include agorabase::php
	include agorabase::apache
	include agorabase::sql
	include agorabase::phpmyadmin

	class { 'composer':
  		auto_update => true,
  		require => [ Class['agorabase::php'] ],
	}
}
