module ApplicationHelper
    def login_link_to(text: "Log In")
        link_to text, login_path
    end
    
    def navigation
        if current_user
            "<h3>#{link_to 'Log Out', logout_path, method: 'delete'}</h3>".html_safe
        else
            "<h3>Not a member? #{link_to 'Sign Up!', signup_path}</h3> or #{login_link_to}"
        end
    end
end
