# require_relative "../support/login_page"
#
# Setup steps
#

# visit given site

Given ("I go to website {string}") do |url|
  visit(url)
end

When ("I enter in email {string}") do |textInput|
  LoginPage.email(textInput)
end

And ("I enter in password") do
  page.fill_in("Enter your password", with: ENV["USER_PASSWORD"])
end

And ("I click {string}") do |log|
  page.click_button("submit")
  sleep 5
end

And ("I click user avatar") do
  LoginPage.avatar
end

Then ("I should see the user is {string}") do |userName|
  LoginPage.is_user?(userName)
  # expect(page).to have_text(userName)
end