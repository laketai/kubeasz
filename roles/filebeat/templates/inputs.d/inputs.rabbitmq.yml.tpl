- type: log
  paths:
    - "{{ rabbitmq_log_path }}/rabbit@*.log"
  exclude_files: ['{{ rabbitmq_log_path }}/rabbit@*_upgrade.log']
  fields:
    format: txt
    type: rabbit_server_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ rabbitmq_log_path }}/rabbit@*_upgrade.log"
  fields:
    format: txt
    type: rabbit_server_upgrade_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ rabbitmq_log_path }}/crash.log"
  fields:
    format: txt
    type: rabbit_crash_log
    hostname: {{ inventory_hostname }}
    enabled: false
