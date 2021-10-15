# from expose endpoint
[[inputs.prometheus]]
  ## An array of urls to scrape metrics from.
  urls = ["http://localhost:10081/metrics"]
  metric_version = 2
