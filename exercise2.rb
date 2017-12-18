require 'httparty'

representatives_response = HTTParty.get('https://represent.opennorth.ca/representative-sets/')

representatives_json = JSON.parse(representatives_response.body)

rep_hash = {}

representatives_json["objects"].each do |object|
  rep_hash.merge!(object["name"] => object["url"])
end

puts rep_hash
