module UnauthenticatedUsersConcern
  extend ActiveSupport::Concern

  def redirect_unauthenticated_users
    redirect_to members_path if session[:member_id].nil?
  end
end