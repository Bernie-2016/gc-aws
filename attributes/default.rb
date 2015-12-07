node.default['postgresql']['version']           = '9.4'
node.default['postgresql']['data_directory']    = "/var/lib/postgresql/#{node['postgresql']['version']}/main"
node.default['postgresql']['hba_file']          = "/etc/postgresql/#{node['postgresql']['version']}/main/pg_hba.conf"
node.default['postgresql']['ident_file']        = "/etc/postgresql/#{node['postgresql']['version']}/main/pg_ident.conf"
node.default['postgresql']['external_pid_file'] = "/var/run/postgresql/#{node['postgresql']['version']}-main.pid"
