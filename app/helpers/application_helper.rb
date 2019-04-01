module ApplicationHelper
  # add correct support for itemscope attribute
content_tag(:div, :itemscope) # => "<div itemscope>" (instead of <div "itemscope">

# time_tag with datetime attribute
time_tag(Time.now) # => <time datetime="2014-09-09T09:38:00+00:00">September 09, 2014 09:38</time>

# time_tag with microdata-compatible time interval
time_tag_interval(time, 1.hour + 20.minutes) # => <time datetime="2014-09-09T09:38:00+00:00/PT1H20M">September 09, 2014 09:38 in 1 hour 20 minutes</time>

# time interval iso8601 helper
time_to_iso8601(1.hour + 20.minutes) # => "PT1H20M"

#  shortcut to build "itemscope" and "itemtype" attributes
mida_scope(:Airline) # => ' itemscope itemtype="http://schema.org/Airline"'

# build a link with itemtype="http://data-vocabulary.org/Breadcrumb"
breadcrumb_link_to("Home", "/") # => <span itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/" itemprop="url"><span itemprop="title">Home</span></a></span>

end
