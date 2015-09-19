class agorabase::sql {
	class { "mysql":
    	root_password => 'auto',
  	}

  	file 
    { 
        "/etc/mysql/conf.d/utf8_charset.cnf":
            ensure  => present,
            owner => root, group => root,
            mode => '0775',            
            source  => "puppet:///modules/agorabase/utf8_charset.cnf",
            require => Class["mysql"],
    }
}