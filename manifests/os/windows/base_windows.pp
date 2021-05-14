class profiles::os::windows::base_windows(
  $software = "default value"
){

include common_scripts
# https://docs.microsoft.com/de-de/security-updates/windowsupdateservices/21669493
# registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet':
#     ensure => present,
# }

# registry_value { 'HKLM\System\CurrentControlSet\Services\Puppet\Description':
#   ensure => present,
#   type   => string,
#   data   => "The Puppet Agent service periodically manages your configuration",
# }

# registry_value { 'HKLM\System\CurrentControlSet\Services\Puppet\\\ValueWithA\Backslash':
#   ensure     => present,
#   type       => string,
#   data       => "The Puppet Agent service periodically manages your configuration",
# }

# # registry_value { 'PuppetDescription':
# #   path       => 'HKLM\System\CurrentControlSet\Services\Puppet\Description',
# #   ensure     => present,
# #   type       => string,
# #   data       => "The Puppet Agent service periodically manages your configuration",
# # }

# class myapp {
#   registry::value { 'puppetserver':
#     key  => 'HKLM\Software\Vendor\PuppetLabs',
#     data => 'ps.mshome.net',
#   }
# }
# registry::value { 'Setting0':
#   key   => 'HKLM\System\CurrentControlSet\Services\Puppet',
#   value => '(default)',
#   data  => "Hello World!",
# }

# registry::service { puppet:
#   ensure       => present,
#   display_name => "Puppet Agent",
#   description  => "Periodically fetches and applies configurations from a Puppet Server.",
#   command      => 'C:\PuppetLabs\Puppet\service\daemon.bat',
# }


# class { 'wsus_client':
#   server_url => 'http://192.168.105.227:8530',
#   auto_update_option     => "Scheduled",
#   scheduled_install_day  => "Thursday",
#   scheduled_install_hour => 16,
# }
# notify { 'Base Windows Profile test':
# }
# class { 'os_patching':
#     ensure => present,
#   }
}
