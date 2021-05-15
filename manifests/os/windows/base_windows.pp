class profiles::os::windows::base_windows(
  $software = "default value"
  
){


  include windows_patching
  class { 'common_scripts': }

}
