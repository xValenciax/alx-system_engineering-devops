#!/usr/bin/env ruby
puts ARGV[0].scan(/(from|to|flags):(\+\d+|\w+|(-?\d:?)+)/).join
