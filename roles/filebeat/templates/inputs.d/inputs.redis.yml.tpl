- type: log
  paths:
    - "{{ redis_log_path }}/redis.log*"
  fields:
    format: txt
    type: redis_server_log
    hostname: {{ inventory_hostname }}
    enabled: false
