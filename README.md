timezone-simplyadrian Cookbook
=========================
This cookbook sets the systems timezone according to the attribute.

Requirements
------------
#### packages
- `timezone-ii` - timezone-simplyadrian wraps `timezone-ii` to set the timezone on linux systems https://github.com/L2G/timezone-ii.git.
- `chef-sugar` - Official chef-sugar cookbook from sethvargo https://github.com/sethvargo/chef-sugar.git

#### libraries
- `Chef::Provider::PowershellScript` - timezone-simplyadrian uses the powershell script provider to execute tzutil on windows systems.

* Chef 11 or higher

#### Supported OS Distributions
Tested on:

* CentOS 6.5 x86_64 HVM minimal
* Windows Server 2008 R2 (features only)
* Windows Server 2012 Family

Attributes
----------
#### timezone-simplyadrian::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['tz']</tt></td>
    <td>String</td>
    <td>the timezone name as defined in tzdata</td>
    <td><tt>America/Chicago</tt></td>
  </tr>
  <tr>
    <td><tt>['timezone-simplyadrian']['windows_tz']</tt></td>
    <td>String</td>
    <td>the timezone name as defined in [system.timezoneinfo]::local</td>
    <td><tt>Central Standard Time</tt></td>
  </tr>
</table>

Usage
-----
#### timezone-simplyadrian::default

Just include `timezone-simplyadrian` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[timezone-simplyadrian]"
  ]
}
```

License and Authors
-------------------
Authors: Adrian Herrera (<simplyadrian@gmail.com>)
