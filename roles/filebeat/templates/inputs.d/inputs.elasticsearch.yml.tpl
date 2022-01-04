- type: log
  paths:
    - "{{ es_gc_log_path }}/gc.log*"
  fields:
    format: txt
    logName: platform/cbim/middleware/elasticsearch/logs/gc_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ es_log_path }}/*-cluster.log*"
  fields:
    format: txt
    logName: platform/cbim/middleware/elasticsearch/logs/cluster_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ es_log_path }}/*-cluster_server.json*"
  fields:
    format: txt
    logName: platform/cbim/middleware/elasticsearch/logs/cluster_server_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ es_log_path }}/*-cluster_index_indexing_slowlog.json*"
  fields:
    format: txt
    logName: platform/cbim/middleware/elasticsearch/logs/indexing_slowlog_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ es_log_path }}/*-cluster_index_search_slowlog.json*"
  fields:
    format: txt
    logName: platform/cbim/middleware/elasticsearch/logs/search_slowlog_log
    hostname: {{ inventory_hostname }}
