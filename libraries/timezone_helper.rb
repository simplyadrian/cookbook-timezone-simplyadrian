module TimezoneNativex
  module Helper

  include Chef::Mixin::ShellOut
  
    def timezone_set?
      check = shell_out.new("powershell.exe -command [system.timezoneinfo]::local").run_command
      check.stdout.include? ("#{node['timezone-nativex']['windows_tz']}")
    end
  end
end