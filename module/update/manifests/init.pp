class update {
#execute 'makecache fast'
exec { 'makecache fast':
	command => '/usr/bin/yum makecache fast'
}
#execute 'yum upgrade'
exec { 'yum upgrade':
	require => Exec['makecache fast'],
        command => '/usr/bin/yum upgrade -y'
}
#execute 'yum update'
exec { 'yum update':
        require => Exec['yum upgrade'],
        command => '/usr/bin/yum update -y'
}
#Testmessage
notify { 'Update erfolgreich':
require => Exec['yum update'],
}
}

