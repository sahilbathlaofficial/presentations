# require 'rubygems'
# require 'open-uri'
# require 'json'

# class SoapBoxApi 
#   attr_reader :token

#   def initialize(token)
#     @token = token
#   end

#   def fetch_posts
#     result = JSON.parse(Nokogiri::HTML(open('http://localhost:3000/api/fetch_posts.json?consumer_key=' + token[:consumer_key] + '&consumer_secret=' + token[:consumer_secret])))
#     raise "401: Not authorized" if (result.empty?)
#     result
#   end
# end