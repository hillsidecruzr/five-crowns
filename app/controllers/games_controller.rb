class GamesController < ApplicationController
  include UnauthenticatedUsersConcern

  before_action :redirect_unauthenticated_users

  def index
  end

  def create
    session[:game] = Game.new(game_params).save

    redirect_to games_select_path
  end

  def new
    @game = Game.new
  end

  def destroy

  end

  def update

  end

  def edit
    stop = 'here'
  end

  def show
    @game = Game.find(show_params)
  end

  def select
    redirect_to games_path and return if params.has_key?(:game) === false

    session[:game_id] = Game.find(params.fetch(:game)).id
    redirect_to game_path(session[:game_id])
  end

private
  def game_params
    params.require(:game).permit(:name)
  end

  def show_params
    params.require(:id)
  end
end
