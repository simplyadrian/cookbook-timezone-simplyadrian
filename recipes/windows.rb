#
# Cookbook Name:: timezone-nativex
# Recipe:: windows
#
# Copyright 2015, NativeX
#
# All rights reserved - Do Not Redistribute
#

 Chef::Resource.send(:include, TimezoneNativex::Helper)

powershell_script "set windows timezone" do
  code <<-EOH
  tzutil.exe /s "#{node['timezone-nativex']['windows_tz']}"
  EOH
  #not_if { timezone_set? } #each_char method on String is not available by default in Ruby 1.8.6 and you will be presented with a NoMethodError.
end