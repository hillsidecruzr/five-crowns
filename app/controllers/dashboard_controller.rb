# TODO: As of now, there is no mechanism for tracking a Members in-progress game data
#       A couple of things can be done:
#         1. A separate model created for a game-player that holds this info and saves to the Member record
#            anything we want to hold a history of (think best-of type things)
#         2. Store this info on the Member record as a JSONB indexed by game id (we would delete a game when it is finished to
#            prevent lookups on an undefined game and such)
class DashboardController < ApplicationController
  before_action :redirect_unauthenticated_users, only: :index

  def index
    @member = Member.find(session[:member_id])
  end
end
