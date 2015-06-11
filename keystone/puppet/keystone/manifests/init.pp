class keystone(
  $auth_url = 'http://192.168.100.1:5000/v3',
  $admin_token = '123',
  $admin_domain_name = 'admin_domain',
  $admin_user_name = 'cloud_admin',
  $admin_user_password = 'password',
  $admin_role = 'admin',

) {
  file { 'policy.json':
    ensure  => 'file',
    path    => '/etc/keystone/policy.json',
    source => 'puppet:///modules/keystone/keystone_policy.json'
  } ->

  file { 'replace_domain_id_in_policy_file':
    ensure  => 'file',
    path    => '/usr/local/bin/replace_domain_id_in_policy_file.sh',
    content => template('keystone/replace_domain_id_in_policy_file.erb'),
    mode    => 755,
  } ->

  file { 'cloud_admin_check':
    ensure  => 'file',
    path    => '/usr/local/bin/cloud_admin_check.sh',
    content => template('keystone/cloud_admin_check.erb'),
    mode    => '0755'
  } ->

  file { 'cloud_admin_create':
    ensure  => 'file',
    path    => '/usr/local/bin/cloud_admin_create.sh',
    content => template('keystone/cloud_admin_create.erb'),
    mode    => '0755'
  } ->

  exec { 'cloud_admin_create':
    path      => '/bin:/usr/bin:/usr/local/bin',
    logoutput => true,
    command   => 'echo "cloud_admin is not present";cloud_admin_create.sh',
    unless   => 'cloud_admin_check.sh'
  } ->

  exec { 'replace_domain_id':
    path      => '/bin:/usr/bin:/usr/local/bin',
    logoutput => true,
    command   => 'replace_domain_id_in_policy_file.sh',
    onlyif    => 'cloud_admin_check.sh'
  }
}
