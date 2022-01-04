- type: log
  paths:
    - "{{ zookeeper_log_path }}/zookeeper--*.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/zookeeper/logs/server_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ zookeeper_log_path }}/zookeeper--*.out"
  fields:
    format: txt
    logName: platform/cbim/middleware/zookeeper/logs/runtime_log
    hostname: {{ inventory_hostname }}
