class ApplicationController < ActionController::Base
  def index

  end

  def logout
    session.destroy

    redirect_to root_path
  end
end
