class profiles::os::windows::base_windows(
  $software = "default value",
  $update_enabled = "false",
  $target_group = "Unassigned Computer",
  $target_group_enabled = 1,
  $wsus_server_url = 'http://wsus:80'
){

  class { 'common_scripts': }

  if ($update_enabled == "true"){
      class{'windows_patching::windows_client_setup':
        $target_group => $target_group,
        $target_group_enabled = $target_group_enabled,
        $wsus_server_url = $wsus_server_url,
    }
  }
}
