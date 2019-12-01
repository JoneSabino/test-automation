# frozen_string_literal: true

class Startup
  include HTTParty
  base_endpoint 'https://swapi.co/api'

  def startup_get
    self.class.get('/films')
  end
end
