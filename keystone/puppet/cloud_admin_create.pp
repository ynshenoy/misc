#exec { 'domain':
#  path        => [ '/bin/:/usr/bin/'],
#  environment => ["ADMIN_TOKEN=9a9b589215af44e395ea664f03d34cf2"],
#  command    => 'echo "curl -H \"X-Auth-Token: $ADMIN_TOKEN\" http://192.168.100.1:5000/v3/domains?name=d1" | sh',
#  #command     => 'echo \"$ADMIN_TOKEN\"',
#  logoutput   => true
#}


file { 'cloud_admin_create':
  path    => '/home/vagrant/cloud_admin_create.sh',
  content => template("/etc/puppet/templates/cloud_admin_create.erb"),
  ensure  => 'file',
  mode    => 755
}
