#
# Cookbook Name:: gc-aws
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'postgresql'
include_recipe 'postgresql::server'
include_recipe 'multicorn'

postgresql_user 'ground_control' do
  superuser false
  createdb false
  login true
  replication false
  password begin; node[:deploy]['ground_control']['environment']['PG_PASSWORD']; rescue; 'dev_password'; end
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
