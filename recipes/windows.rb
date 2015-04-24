#
# Cookbook Name:: timezone-nativex
# Recipe:: windows
#
# Copyright 2015, NativeX
#
# All rights reserved - Do Not Redistribute
#

Chef::Provider::PowershellScript.send(:include, TimezoneNativex::Helper)

powershell_script "set windows timezone" do
  code <<-EOH
  tzutil.exe /s "#{node['timezone-nativex']['windows_tz_name']}"
  EOH
  not_if {timezone_set?}
end