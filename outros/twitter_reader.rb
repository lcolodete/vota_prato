require 'rubygems'
require 'hpricot'
require 'open-uri'

doc = Hpricot(open('http://twitter.com/leandrocolodete'))
items = doc / ".hentry .entry-content"
items.each do |item|
	puts item.inner_text
end

