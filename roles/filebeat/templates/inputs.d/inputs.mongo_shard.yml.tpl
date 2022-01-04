- type: log
  paths:
    - "{{ mongo_shard_log_path }}/{{ SHARD_NAME }}.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/mongo/logs/shard_log
    hostname: {{ inventory_hostname }}
