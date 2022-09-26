module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    # This is so we never return nil. It's either super, which means that someone is signed in or the OpenStruct class set below
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User",
                   first_name: "Guest",
                   last_name: "User",
                   email: "guest@devcamp.com"
    )
  end
end