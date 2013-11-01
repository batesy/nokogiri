
require 'rubygems'
require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open("http://www.billboard.com/charts/country-songs"))

puts page.css("h1")[1]