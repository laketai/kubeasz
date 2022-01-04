- type: log
  paths:
    - "{{ influx_log_path }}/influx.log*"
  fields:
    format: txt
    logName: platform/cbim/middleware/influx/logs/server_log
    hostname: {{ inventory_hostname }}
