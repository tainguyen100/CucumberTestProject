#
# Setup steps
#

# visit given site

Given ("I go to website {string}") do |url|
  visit(url)
end

When ("I enter in email {string}") do |textInput|
  page.fill_in("Enter your email", with: textInput)
end

And ("I enter in password") do
  page.fill_in("Enter your password", with: ENV["USER_PASSWORD"])
end

And ("I click {string}") do |log|
  page.click_button("submit")
end

And ("I click user avatar") do
  page.find(:css, "span[class='avatar avatar-round avatar-small']").click
  sleep 5
end

Then ("I should see the user is {string}") do |user|
  expect(page).to have_text(user)
end