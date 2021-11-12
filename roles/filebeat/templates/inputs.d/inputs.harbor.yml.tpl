- type: log
  paths:
    - "{{ harbor_log_path }}/chartmuseum.log"
  fields:
    format: txt
    type: harbor_chartmuseum_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ harbor_log_path }}/core.log"
  fields:
    format: txt
    type: harbor_core_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ harbor_log_path }}/jobservice.log"
  fields:
    format: txt
    type: harbor_jobservice_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ harbor_log_path }}/portal.log"
  fields:
    format: txt
    type: harbor_portal_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ harbor_log_path }}/postgresql.log"
  fields:
    format: txt
    type: harbor_postgresql_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ harbor_log_path }}/proxy.log"
  fields:
    format: txt
    type: harbor_proxy_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ harbor_log_path }}/redis.log"
  fields:
    format: txt
    type: harbor_redis_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ harbor_log_path }}/registryctl.log"
  fields:
    format: txt
    type: harbor_registryctl_log
    hostname: {{ inventory_hostname }}
    enabled: false

- type: log
  paths:
    - "{{ harbor_log_path }}/registry.log"
  fields:
    format: txt
    type: harbor_registry_log
    hostname: {{ inventory_hostname }}
    enabled: false
