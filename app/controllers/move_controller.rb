class MoveController < ApplicationController

  def create
    begin
      @game = Game.find(params['id'])
      @game.move(params['subgame'], params['cell'])
      render json: @game
    rescue => e
      render json: { error: e }, status: 200
    end
  end
end
