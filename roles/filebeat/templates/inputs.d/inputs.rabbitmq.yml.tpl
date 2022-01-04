- type: log
  paths:
    - "{{ rabbitmq_log_path }}/rabbit@*.log"
  exclude_files: ['{{ rabbitmq_log_path }}/rabbit@*_upgrade.log']
  fields:
    format: txt
    logName: platform/cbim/middleware/rabbitmq/logs/server_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ rabbitmq_log_path }}/rabbit@*_upgrade.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/rabbitmq/logs/server_upgrade_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ rabbitmq_log_path }}/crash.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/rabbitmq/logs/crash_log
    hostname: {{ inventory_hostname }}
