- type: log
  paths:
    - "{{ mongo_master_log_path }}/mongod_config.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/mongo/logs/config_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ mongo_master_log_path }}/mongod_router.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/mongo/logs/router_log
    hostname: {{ inventory_hostname }}
