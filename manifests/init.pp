class agorabase {
	include agorabase::php55 #specific setup steps for 5.5
	include agorabase::php
	include agorabase::apache
	include agorabase::sql
	include agorabase::phpmyadmin

	class { 'composer':
  		auto_update => true,
  		require => [ Class['agora::php'], Class['agora::php55'] ],
	}
}