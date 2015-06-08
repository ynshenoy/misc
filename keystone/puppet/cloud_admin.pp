file { 'cloud_admin_check':
  path    => '/home/vagrant/cloud_admin_check.sh',
  content => template("/etc/puppet/templates/cloud_admin_check.erb"),
  ensure  => 'file',
  mode    => 755
} ->

file { 'policy.json':
  path    => '/etc/keystone/policy.json',
  content => template("/etc/puppet/templates/policy_json.erb"),
  ensure  => 'file'
} ->

file { 'replace_domain_id_in_policy_file':
  path    => '/home/vagrant/replace_domain_id_in_policy_file.sh',
  content => template("/etc/puppet/templates/replace_domain_id_in_policy_file.erb"),
  ensure  => file,
  mode    => 755,
} ->

file { 'cloud_admin_create':
  path    => '/home/vagrant/cloud_admin_create.sh',
  content => template("/etc/puppet/templates/cloud_admin_create.erb"),
  ensure  => 'file',
  mode    => 755
} ->

exec { 'create_cloud_admin':
 path      => '/bin:/usr/bin:/home/vagrant',
 logoutput => true,
 command   => 'echo "cloud_admin is not present";cloud_admin_create.sh',
 unless   => 'cloud_admin_check.sh'
} -> 

exec { 'replace_domain_id':
 path      => '/bin:/usr/bin:/home/vagrant',
 logoutput => true,
 command   => 'replace_domain_id_in_policy_file.sh'
} 
