- type: log
  paths:
    - "{{ kafka_log_path }}/controller.log*"
  fields:
    format: txt
    logName: platform/cbim/middleware/kafka/logs/controller_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ kafka_log_path }}/server.log*"
  fields:
    format: txt
    logName: platform/cbim/middleware/kafka/logs/server_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ kafka_log_path }}/state-change.log*"
  fields:
    format: txt
    logName: platform/cbim/middleware/kafka/logs/state_change_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ kafka_log_path }}/log-cleaner.log*"
  fields:
    format: txt
    logName: platform/cbim/middleware/kafka/logs/log_cleaner_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ kafka_log_path }}/kafkaServer-gc.log*"
  multiline.type: pattern
  multiline.pattern: '^[[:space:]]+'
  multiline.negate: false
  multiline.match: after
  fields:
    format: txt
    logName: platform/cbim/middleware/kafka/logs/gc_log
    hostname: {{ inventory_hostname }}
