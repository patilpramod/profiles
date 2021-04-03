class profiles::os::windows::base_windows(
  $software = "default value"
){

notify{$software:}
notify{"base_windows testing ${software}":}

}
