class profiles::os::windows::base_windows(
  $software = "default value"
){

class { 'os_patching::os_patching':
    ensure => present,
  }
}
