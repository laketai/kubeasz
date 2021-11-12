- type: log
  paths:
    - "{{ es_gc_log_path }}/gc.log*"
  fields:
    format: txt
    type: es_gc_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ es_log_path }}/*-cluster.log*"
  fields:
    format: txt
    type: es_cluster_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ es_log_path }}/*-cluster_server.json*"
  fields:
    format: json
    type: es_cluster_server_log
    hostname: {{ inventory_hostname }}
    formatter: yyyy-MM-dd'T'HH:mm:ss.SSSX
    enabled: true

- type: log
  paths:
    - "{{ es_log_path }}/*-cluster_index_indexing_slowlog.json*"
  fields:
    format: json
    type: es_indexing_slowlog_log
    hostname: {{ inventory_hostname }}
    formatter: yyyy-MM-dd'T'HH:mm:ss.SSSX
    enabled: true

- type: log
  paths:
    - "{{ es_log_path }}/*-cluster_index_search_slowlog.json*"
  fields:
    format: json
    type: es_search_slowlog_log
    hostname: {{ inventory_hostname }}
    formatter: yyyy-MM-dd'T'HH:mm:ss.SSSX
    enabled: true
