class profiles::os::windows::base_windows(
  $software = "default value",
  $update_enabled = "false",
  $target_group = "Unassigned Computer",
  $wsus_server_url = 'http://wsus:80'
){


  class { 'common_scripts': }

}
