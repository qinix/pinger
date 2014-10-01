require 'httparty'

filename = 'sitelist.txt'

loop do
  sites = File.read(filename).split("\n")
  sites.each do |site|
    body = HTTParty.get site
  end

  sleep 60
end
