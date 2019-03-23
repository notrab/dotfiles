#!/usr/bin/ruby
require 'irb/completion'
require 'rubygems'

IRB.conf[:SAVE_HISTORY] = 1000

IRB.conf[:AUTO_INDENT] = true

def r
  reload!
end
