class agora::sql {
	class { "mysql":
    	root_password => 'mys4cr3',
  	}

	mysql::grant { 'phpunitdb':
    	mysql_user     => 'phpunit',
    	mysql_password => 'phpunit',
	}
}