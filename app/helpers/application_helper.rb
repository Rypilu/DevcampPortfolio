module ApplicationHelper

  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Sign Up", new_user_registration_path) +
        "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    end
  end
end

# with ruby if you have two returns it will return the last option so below returns "Something" That's the problem
# we're fixing above with:
# (link_to "Sign Up", new_user_registration_path) +
#         "<br>".html_safe +
#       (link_to "Login", new_user_session_path)
#
# This is stupid and needs to be fixed
#
# def sample_method
#   x = 2
#   if x == 1
#     "yaya"
#   else
#     "No"
#     "something"
#   end
# end