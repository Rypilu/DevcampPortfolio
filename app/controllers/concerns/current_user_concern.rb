module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    # This is so we never return nil. It's either super, which means that someone is signed in or the OpenStruct class set below
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
  end
end