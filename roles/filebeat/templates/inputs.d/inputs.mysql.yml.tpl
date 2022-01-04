- type: log
  paths:
    - "{{ mysql_log_path }}"
  fields:
    format: txt
    logName: platform/cbim/middleware/mysql/logs/server_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ mysql_log_router_path }}"
  fields:
    format: txt
    logName: platform/cbim/middleware/mysql/logs/router_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ mysql_log_slow_path }}"
  fields:
    format: txt
    logName: platform/cbim/middleware/mysql/logs/slow_log
    hostname: {{ inventory_hostname }}
