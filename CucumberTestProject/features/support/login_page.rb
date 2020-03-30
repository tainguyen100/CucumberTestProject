class LoginPage
  extend Capybara::DSL
  class << self
    def avatar
      page.find(:css, "span[class='avatar avatar-round avatar-small']").click
    end

    def email(textInput)
      page.fill_in("Enter your email", with: textInput)
    end

    def is_user?(userName)
      page.has_text?(userName)
    end
  end
end
