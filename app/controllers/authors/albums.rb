require 'rubygems'
require 'httparty'

class MicrourbRest
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com'

  def albums
    self.class.get('/albums')
  end
end

microurb_rest = MicrourbRest.new
puts microurb_rest.albums
