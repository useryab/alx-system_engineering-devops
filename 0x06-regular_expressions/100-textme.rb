#!/usr/bin/env ruby
# Yabsira Tekalegn

sender = ARGV[0].scan(/(?<=\[from:)[^ ]+(?=\])/).join
reciever = ARGV[0].scan(/(?<=\[to:)[^ ]+(?=\])/).join
flags = ARGV[0].scan(/(?<=\[flags:)[^ ]+(?=\])/).join
puts "#{sender},#{reciever},#{flags}"
