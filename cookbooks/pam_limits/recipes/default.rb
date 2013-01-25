#
# Cookbook Name:: pam_limits
# Recipe:: default
#
# Copyright 2013, Andrey Brindeyev
#
# License: APL 2.0
#

template node['pam_limits']['config'] do
  source "limits.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  variables(
    :domains => node['pam_limits']['domains']
  )
end
