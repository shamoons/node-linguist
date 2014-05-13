#!/usr/bin/env ruby

require 'linguist'

filePath = ARGV[0]
langDetails = Linguist::FileBlob.new(filePath)

type = if langDetails.text?
    'Text'
  elsif langDetails.image?
    'Image'
  else
    'Binary'
  end

res = {:loc => langDetails.loc,
  :sloc => langDetails.sloc,
  :type => type,
  :mime_type => langDetails.mime_type,
  :language => langDetails.language}.to_json

puts res

