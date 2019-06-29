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

  def signin
    if params.has_key?(:member) === false
      flash[:error] = "Incorrect member info given"
      redirect_to members_path and return
    end

    session[:member_id] = Member.find(params.fetch(:member)).id
    redirect_to dashboard_index_path
  end

  def find
    # @todo figure out how to send and store a selected member into the session
  end
end

private

  def member_params
    params.require(:member)
        .permit(:name, :nickname)
  end
