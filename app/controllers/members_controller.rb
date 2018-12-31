class MembersController < ApplicationController
  def index

  end

  def new
    @member = Member.new
  end

  def create
    Member.new(member_params).save
    # @todo create a dashboard controller/model for housing information about the game
    redirect_to games_path
  end
end

private
  def member_params
    params.require(:member)
        .permit(:name, :nickname)
  end
