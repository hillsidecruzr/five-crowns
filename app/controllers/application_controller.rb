class ApplicationController < ActionController::Base
  include UnauthenticatedUsersConcern

  def index

  end

  def logout
    session.destroy

    redirect_to root_path
  end
end
