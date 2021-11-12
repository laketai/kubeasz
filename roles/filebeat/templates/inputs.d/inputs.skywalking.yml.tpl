- type: log
  paths:
    - "{{ skywalking_log_path }}/oap.log"
  fields:
    format: txt
    type: skywalking_oap_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ skywalking_log_path }}/skywalking-oap-server.log"
  fields:
    format: txt
    type: skywalking_oap_server_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ skywalking_log_path }}/webapp.log"
  fields:
    format: txt
    type: skywalking_webapp_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ skywalking_log_path }}/webapp-console.log"
  fields:
    format: txt
    type: skywalking_webapp_console_log
    hostname: {{ inventory_hostname }}
    enabled: false
