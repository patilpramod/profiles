class profiles::os::windows::base_windows(
  $software = "default value"
){

  inclde 'test'
  class { 'test::tt':; }
  class { 'common_scripts':; }

}
