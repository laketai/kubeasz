- type: log
  paths:
    - "{{ telegraf_log_path }}/*.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/telegraf/logs/collector_log
    hostname: {{ inventory_hostname }}
