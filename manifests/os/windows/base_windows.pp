class profiles::os::windows::base_windows(
  $software = "default value"
){

$t = lookup('test')
notify{$t:}
notify{"base_windows testing ${software}":}
include os_patching
}
