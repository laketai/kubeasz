# from expose endpoint
[[inputs.prometheus]]
  ## An array of urls to scrape metrics from.
  urls = ["http://localhost:10081/metrics"]
  metric_version = 2

# from local file
[[inputs.tail]]
  files = ["/path/to/metrics/file/metrics-failed-*.out"]
  data_format = "prometheus"

  ## Read file from beginning.
  # from_beginning = false

  ## Whether file is a named pipe
  # pipe = false

  ## Method used to watch for file updates.  Can be either "inotify" or "poll".
  # watch_method = "inotify"

  ## Maximum lines of the file to process that have not yet be written by the
  ## output.  For best throughput set based on the number of metrics on each
  ## line and the size of the output's metric_batch_size.
  # max_undelivered_lines = 1000

  ## Character encoding to use when interpreting the file contents.  Invalid
  ## characters are replaced using the unicode replacement character.  When set
  ## to the empty string the data is not decoded to text.
  ##   ex: character_encoding = "utf-8"
  ##       character_encoding = "utf-16le"
  ##       character_encoding = "utf-16be"
  ##       character_encoding = ""
  # character_encoding = ""

  ## Set the tag that will contain the path of the tailed file. If you don't want this tag, set it to an empty string.
  # path_tag = "path"

  ## multiline parser/codec
  ## https://www.elastic.co/guide/en/logstash/2.4/plugins-filters-multiline.html
  #[inputs.tail.multiline]
    ## The pattern should be a regexp which matches what you believe to be an indicator that the field is part of an event consisting of multiple lines of log data.
    #pattern = "^\s"

    ## The field's value must be previous or next and indicates the relation to the
    ## multi-line event.
    #match_which_line = "previous"

    ## The invert_match can be true or false (defaults to false).
    ## If true, a message not matching the pattern will constitute a match of the multiline filter and the what will be applied. (vice-versa is also true)
    #invert_match = false

    #After the specified timeout, this plugin sends the multiline event even if no new pattern is found to start a new event. The default is 5s.
    #timeout = 5s
