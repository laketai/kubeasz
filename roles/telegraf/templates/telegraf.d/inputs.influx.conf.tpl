[[inputs.influxdb]]
  ## Works with InfluxDB debug endpoints out of the box,
  ## but other services can use this format too.
  ## See the influxdb plugin's README for more details.

  ## Multiple URLs from which to read InfluxDB-formatted JSON
  ## Default is "http://localhost:8086/debug/vars".
  urls = [
    "http://localhost:8086/debug/vars"
  ]

  ## Username and password to send using HTTP Basic Authentication.
  # username = ""
  # password = ""

  ## Optional TLS Config
  # tls_ca = "/etc/telegraf/ca.pem"
  # tls_cert = "/etc/telegraf/cert.pem"
  # tls_key = "/etc/telegraf/key.pem"
  ## Use TLS but skip chain & host verification
  # insecure_skip_verify = false

  ## http request & header timeout
  timeout = "5s"
