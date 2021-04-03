class profiles::os::windows::base_windows(
  $software = ""
){

notify{$software:}
notify{"base_windows testing ${software}":}

}
