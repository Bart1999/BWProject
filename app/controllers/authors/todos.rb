require 'rubygems'
require 'httparty'

class MicrourbRest
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com'

  def todos
    self.class.get('/todos')
  end
end

microurb_rest = MicrourbRest.new
puts microurb_rest.todos
