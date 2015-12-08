#
# Cookbook Name:: gc-aws
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'postgresql'
include_recipe 'multicorn'
include_recipe 'postgis::default'

postgresql_user 'ground_control' do
  superuser false
  createdb false
  login true
  replication false
  password 'password'
end

postgresql_database 'ground_control' do
  owner 'ground_control'
  encoding 'UTF-8'
  locale 'en_US.UTF-8'
end

# install extensions to database
postgresql_extension 'multicorn' do
  database 'ground_control'
end

postgresql_extension 'postgis' do
  database 'ground_control'
end
