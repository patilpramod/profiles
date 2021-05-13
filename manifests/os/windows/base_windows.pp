class profiles::os::windows::base_windows(
  $software = "default value"
){

class { 'wsus_client':
  server_url => 'http://192.168.105.227:8530',
  auto_update_option     => "Scheduled",
  scheduled_install_day  => "Tuesday",
  scheduled_install_hour => 2,
}
# notify { 'Base Windows Profile test':
# }
# class { 'os_patching':
#     ensure => present,
#   }
}
