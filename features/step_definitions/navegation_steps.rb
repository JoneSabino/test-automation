# frozen_string_literal: true

Given('I am at Inmetrics website homepage') do
  visit 'http://inmetrics.com.br'
end

When('I click in the {word} header link') do |link|
  click_link 'linkcarreiras'
end

# Then(/^I will see the "([^"]*)" link$/) do |_arg|
#   assert = page.has_xpath? '/html/body/main/section[8]/div/div/div/a'
#   puts assert
# end

Then('I will see the {string} link') do |link_text|
  # page.has_xpath? '/html/body/main/section[8]/div/div/div/a'
  # page.assert_selector(:css, 'a[href="https://inmetrics.gupy.io"]')
  expect(page).to have_link(link_text, href: 'https://inmetrics.gupy.io')
end

Given('I am able to see the {string} link') do |link_text|
  expect(page).to have_link(link_text, href: 'https://inmetrics.gupy.io')
end

When('I click on {string}') do |link_text|
  click_link link_text
  # expect(page).to have_css('header__login')
  sleep(3) # Fiz de tudo pra nao usar, mas nada alem do sleep funcionou.
end

Then("I'll be redirected to the careers website") do
  #expect(page).to have_link('Fazer login como candidato', href: 'https://inmetrics.gupy.io/candidates')
  expect(current_url).to eq('https://inmetrics.gupy.io/')
end

And("I'll be able to see the {string} message") do |message|
  page.has_content?(message)
end
