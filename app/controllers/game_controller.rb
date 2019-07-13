class GameController < ApplicationController

  def create
    @game = Game.create
    render json: @game
  end

  def show
    begin
      @game = Game.find(params['id'])
      render json: @game
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Invalid id!' }
    end
  end

  private

  def game_params
    params["id"]
  end
end
