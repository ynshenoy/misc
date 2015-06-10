file { 'policy.json':
  path    => '/etc/keystone/policy.json',
  content => template("/etc/puppet/templates/policy_json.erb"),
  ensure  => 'file'
} ->

file { 'replace_domain_id_in_policy_file':
  path    => '/usr/local/bin/replace_domain_id_in_policy_file.sh',
  content => template("/etc/puppet/templates/replace_domain_id_in_policy_file.erb"),
  ensure  => file,
  mode    => 755,
} ->

file { 'cloud_admin_check':
  path    => '/usr/local/bin/cloud_admin_check.sh',
  content => template("/etc/puppet/templates/cloud_admin_check.erb"),
  ensure  => 'file',
  mode    => 755
} ->

file { 'cloud_admin_create':
  path    => '/usr/local/bin/cloud_admin_create.sh',
  content => template("/etc/puppet/templates/cloud_admin_create.erb"),
  ensure  => 'file',
  mode    => 755
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
