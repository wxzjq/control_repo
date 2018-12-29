node default {

}
node 'ip-10-0-3-104.ap-southeast-1.compute.internal' {
  include role::master_server
  file { '/root/README':
  ensure  => file,
  content => $fqdn,
  }
}
node /^web/ {
  include role::app_server 
}

node /^db/ {
  include role::db_server
}
