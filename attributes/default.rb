d = node[:deploy]
gc = d['ground-control']
ev = gc[:environment_variables]
pw = ev[:PG_PASSWORD]
node.default['postgresql']['password']['postgres'] = pw
