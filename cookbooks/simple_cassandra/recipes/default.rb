#
# Cookbook Name:: simple_cassandra
# Recipe:: default
#
# Copyright 2012, Grid Dynamics International, Inc.
#
# All rights reserved - Do Not Redistribute
#

include_recipe "yum::yum"

yum_repository "cassandra" do
  description "Apache Cassandra"
  url "http://chef/d/rpm.datastax.com/community/"
  action :add
end

package "jna" do
  action :install
end

package "dsc" do
  action :install
end

template "/etc/cassandra/conf/cassandra-env.sh" do
  source "cassandra-env.sh.erb"
  mode 0755
  owner "cassandra"
  group "cassandra"
  notifies :restart, "service[cassandra]"
end

service "cassandra" do
  action [:enable,:start]
end

