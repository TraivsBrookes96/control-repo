node puppet.local {
  include role::master
  file {'/etc/secret_password.txt':
	ensure	=> present,
	content => lookup('secret_password'),
  }
}
