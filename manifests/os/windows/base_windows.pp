class profiles::os::windows::base_windows(
  $software = "default value"
){

class { 'common_scripts': }
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

#include os_patching
  class { 'os_patching':
    patch_window     => 'Week3',
    blackout_windows => { 'End of year change freeze':
      {
        'start': '2018-12-15T00:00:00+1000',
        'end':   '2019-01-15T23:59:59+1000',
      }
    },
}
  class { 'wsus_client':
  # server_url             => 'http://my-wsus-server.internal:8530', # WSUS Server
  # enable_status_server   => true,                                   # Send status to WSUS too
    auto_update_option     => 'AutoNotify',                          # automatically download updates and notify for install
  }
}
