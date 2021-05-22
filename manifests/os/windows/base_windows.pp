class profiles::os::windows::base_windows(
  $software = "default value"
){

  class { 'test::tt':; }
  class { 'common_scripts':; }

}
