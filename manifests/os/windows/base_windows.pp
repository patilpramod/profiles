class profiles::os::windows::base_windows(
  $software = "default value",
  $update_enabled = "false",
  $target_group = "Unassigned Computer"
){


  class { 'common_scripts': }

}
