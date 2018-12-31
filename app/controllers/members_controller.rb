class MembersController < ApplicationController
  def index

  end

  def new
    @member = Member.new
  end

  def create
    if Member.new(member_params).save
      session[:member] = Member.find_by_nickname(member_params[:nickname])
      redirect_to games_path and return
    end
  end
end

private

  def member_params
    params.require(:member)
        .permit(:name, :nickname)
  end
