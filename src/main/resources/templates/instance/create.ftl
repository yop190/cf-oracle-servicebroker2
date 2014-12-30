create tablespace ${instance.config.tablespaceName} 
datafile '${instance.config.tablespaceDir}/${instance.config.tablespaceName}${instance.config.tablespaceExtension}' 
size ${plan.metadata.other.init_size}
autoextend on 
maxsize ${plan.metadata.other.max_size} 
extent management local 
uniform size 64K;

create temporary tablespace ${instance.config.tablespaceName}_temp 
tempfile '${instance.config.tablespaceDir}/${instance.config.tablespaceName}_temp${instance.config.tablespaceExtension}'
size 10M 
autoextend on next 32m 
maxsize ${plan.metadata.other.max_size}
extent management local