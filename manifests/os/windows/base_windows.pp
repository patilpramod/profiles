class profiles::os::windows::base_windows(
  $software = "default value"
){


notify { 'Base Windows Profile test':
}
# class { 'os_patching':
#     ensure => present,
#   }
}
