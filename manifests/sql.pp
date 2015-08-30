class agorabase::sql {
	class { "mysql":
    	root_password => 'auto',
  	}
}