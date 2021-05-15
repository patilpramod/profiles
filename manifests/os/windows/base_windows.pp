class profiles::os::windows::base_windows(
  $software = "default value"
){

  class { 'common_scripts': }

  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\testing':
    ensure => present,
    type   => string,
    data   => "testing string",
  }
  class { 'wsus_client':
   server_url             => 'http://192.168.105.227:80', # WSUS Server
   enable_status_server   => true,                                   # Send status to WSUS too
    auto_update_option     => 'AutoNotify',                          # automatically download updates and notify for install
  }
}
