- type: log
  paths:
    - "{{ mongo_master_log_path }}/mongod_config.log"
  fields:
    format: json
    type: mongod_config_log
    hostname: {{ inventory_hostname }}
    enabled: true

- type: log
  paths:
    - "{{ mongo_master_log_path }}/mongod_router.log"
  fields:
    format: json
    type: mongod_router_log
    hostname: {{ inventory_hostname }}
    enabled: true
