require 'nokogiri'
require 'open-uri'
require 'pry'

site = "https://www.nowinstock.net/computers/videocards/nvidia/rtx3070/"
doc = Nokogiri::HTML(open(site)).css("div#DisplayHistory").css("tr")

doc.each {|graphics| puts graphics.text}