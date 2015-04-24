#
# Cookbook Name:: timezone-nativex
# Recipe:: windows
#
# Copyright 2015, NativeX
#
# All rights reserved - Do Not Redistribute
#

powershell_script "set windows timezone" do
  code <<-EOH
  tzutil.exe /s "#{node['timezone-nativex']['windows_tz_name']}"
  EOH
end