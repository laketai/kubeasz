- type: log
  paths:
    - "{{ harbor_log_path }}/chartmuseum.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/harbor/logs/chartmuseum_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ harbor_log_path }}/core.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/harbor/logs/core_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ harbor_log_path }}/jobservice.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/harbor/logs/jobservice_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ harbor_log_path }}/portal.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/harbor/logs/portal_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ harbor_log_path }}/postgresql.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/harbor/logs/postgresql_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ harbor_log_path }}/proxy.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/harbor/logs/proxy_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ harbor_log_path }}/redis.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/harbor/logs/edis_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ harbor_log_path }}/registryctl.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/harbor/logs/registryctl_log
    hostname: {{ inventory_hostname }}

- type: log
  paths:
    - "{{ harbor_log_path }}/registry.log"
  fields:
    format: txt
    logName: platform/cbim/middleware/harbor/logs/registry_log
    hostname: {{ inventory_hostname }}
