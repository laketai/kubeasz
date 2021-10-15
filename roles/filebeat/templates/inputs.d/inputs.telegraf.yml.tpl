- type: log
  paths:
    - "{{ telegraf_log_path }}/*.log"
  fields:
    format: txt
    type: telegraf_collector_log
    hostname: {{ inventory_hostname }}
    enabled: false
