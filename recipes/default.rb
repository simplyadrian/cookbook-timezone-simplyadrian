#
# Cookbook Name:: timezone-simplyadrian
# Recipe:: default
#
# Copyright 2015, simplyadrian
#
# All rights reserved - Do Not Redistribute
#

if windows?
	include_recipe 'timezone-simplyadrian::windows'
else
	include_recipe 'timezone-ii'
end

