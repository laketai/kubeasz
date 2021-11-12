- type: log
  paths:
    - "{{ zookeeper_log_path }}/zookeeper--*.log"
  fields:
    format: txt
    type: zookeeper_server_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ zookeeper_log_path }}/zookeeper--*.out"
  fields:
    format: txt
    type: zookeeper_runtime_log
    hostname: {{ inventory_hostname }}
    enabled: false
