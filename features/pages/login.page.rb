class LoginPage < SitePrism::Page

    set_url ''
    element :emailField, :id, "email"
    element :passwordField, :id, "pass"
    element :loginButton, "[data-testid='royal_login_button']"

    def userLogin(email, password)
        emailField.set (email)
        passwordField.set (password)
        page.execute_script("arguments[0].click();", loginButton)
    end
end

