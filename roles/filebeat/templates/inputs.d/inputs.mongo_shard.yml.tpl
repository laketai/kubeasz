- type: log
  paths:
    - "{{ mongo_shard_log_path }}/{{ SHARD_NAME }}.log"
  fields:
    format: json
    type: mongo_shard_log
    hostname: {{ inventory_hostname }}
    enabled: true
