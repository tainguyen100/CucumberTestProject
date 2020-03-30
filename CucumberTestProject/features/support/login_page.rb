class LoginPage
  extend Capybara::DSL
  class << self
    def click_avatar
      page.find(css_user_avatar).click
    end

    def css_user_avatar
      "span.avatar.avatar-round.avatar-small"
    end

    def email(text_input)
      page.fill_in("Enter your email", with: text_input)
    end

    def is_user(user_name)
      page.has_text?(user_name)
    end
  end
end
