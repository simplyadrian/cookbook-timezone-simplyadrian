#
# Cookbook Name:: timezone-nativex
# Recipe:: default
#
# Copyright 2015, NativeX
#
# All rights reserved - Do Not Redistribute
#

if windows?
	include_recipe 'timezone-nativex::windows'
else
	include_recipe 'timezone-ii'
end

