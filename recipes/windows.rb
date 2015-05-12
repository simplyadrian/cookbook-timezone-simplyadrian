#
# Cookbook Name:: timezone-simplyadrian
# Recipe:: windows
#
# Copyright 2015, simplyadrian
#
# All rights reserved - Do Not Redistribute
#

 Chef::Resource.send(:include, TimezoneSimplyadrian::Helper)

powershell_script "set windows timezone" do
  code <<-EOH
  tzutil.exe /s "#{node['timezone-simplyadrian']['windows_tz']}"
  EOH
  #not_if { timezone_set? } #each_char method on String is not available by default in Ruby 1.8.6 and you will be presented with a NoMethodError.
end