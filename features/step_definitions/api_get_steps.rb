# frozen_string_literal: true

Given('I set GET films api endpoint') do
  # Already done in the Startup class
end

When('I make a request to get the films') do
  $response = @startup.startup_get
end

Then('the API will return with status code 200') do
  puts 'Response code: ' + $response.code
  expect($response.code).to eq 200
end

And('only the ones directed by {string} and produced by {string} will be shown') do |director,producer|
  body = JSON.parse($response.body)
  films = body['results']
  films.each do |film|
    if film['director'] == director && film['producer'] == producer
      puts 'Title: ' + film['title'] + '| Directed by: ' + film['director'] + '| Produced by: ' + film['producer']
    end
  end
end
