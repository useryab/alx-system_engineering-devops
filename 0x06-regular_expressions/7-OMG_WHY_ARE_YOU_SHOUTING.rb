#!/usr/bin/env ruby
# Yabsira Tekalegn

puts ARGV[0].scan(/(?<=from:|to:|flags:).+?(?=\])/).join(',')
