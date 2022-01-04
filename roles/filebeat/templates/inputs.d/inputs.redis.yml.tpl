- type: log
  paths:
    - "{{ redis_log_path }}/redis.log*"
  fields:
    format: txt
    logName: platform/cbim/middleware/redis/logs/server_log
    hostname: {{ inventory_hostname }}
