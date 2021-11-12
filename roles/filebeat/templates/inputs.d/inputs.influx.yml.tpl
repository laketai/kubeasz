- type: log
  paths:
    - "{{ influx_log_path }}/influx.log*"
  fields:
    format: txt
    type: influx_server_log
    hostname: {{ inventory_hostname }}
    enabled: false
