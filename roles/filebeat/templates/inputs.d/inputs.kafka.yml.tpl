- type: log
  paths:
    - "{{ kafka_log_path }}/controller.log*"
  fields:
    format: txt
    type: kafka_controller_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ kafka_log_path }}/server.log*"
  fields:
    format: txt
    type: kafka_server_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ kafka_log_path }}/state-change.log*"
  fields:
    format: txt
    type: kafka_state_change_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ kafka_log_path }}/log-cleaner.log*"
  fields:
    format: txt
    type: kafka_log_cleaner_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ kafka_log_path }}/kafkaServer-gc.log*"
  multiline.type: pattern
  multiline.pattern: '^[[:space:]]+'
  multiline.negate: false
  multiline.match: after
  fields:
    format: txt
    type: kafka_gc_log
    hostname: {{ inventory_hostname }}
    enabled: false