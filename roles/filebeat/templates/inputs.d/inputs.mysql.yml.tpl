- type: log
  paths:
    - "{{ mysql_log_path }}"
  fields:
    format: txt
    type: mysql_server_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ mysql_log_router_path }}"
  fields:
    format: txt
    type: mysql_router_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ mysql_log_slow_path }}"
  fields:
    format: txt
    type: mysql_slow_log
    hostname: {{ inventory_hostname }}
    enabled: false