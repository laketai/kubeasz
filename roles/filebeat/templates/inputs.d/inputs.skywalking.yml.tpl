- type: log
  paths:
    - "{{ skywalking_log_path }}/oap.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/skywalking/logs/oap_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ skywalking_log_path }}/skywalking-oap-server.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/skywalking/logs/oap_server_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ skywalking_log_path }}/webapp.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/skywalking/logs/webapp_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ skywalking_log_path }}/webapp-console.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/skywalking/logs/webapp_console_log
    hostname: {{ inventory_hostname }}
