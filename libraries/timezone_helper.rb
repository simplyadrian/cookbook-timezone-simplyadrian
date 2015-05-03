module TimezoneNativex
  module Helper

  include Chef::Mixin::ShellOut
  #require 'jcode' if RUBY_VERSION < '1.9' #each_char method on String is not available by default in Ruby 1.8.6 and you will be presented with a NoMethodError.
  
    def timezone_set?
      check = shell_out.new("powershell.exe -command [system.timezoneinfo]::local").run_command
      check.stdout.any? ("#{node['timezone-nativex']['windows_tz']}")
    end
  end
end