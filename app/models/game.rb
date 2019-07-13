class Game < ApplicationRecord
  def move(subgame, cell)
    # i accidently made the valid subgames strings in my db...
    # my hack so i don't spend time fixing that...
    string_subgame = subgame.to_s
    string_cell = cell.to_s
    raise 'Invalid move' if !valid_subgames.include?(string_subgame) || won?(subgame)
    raise 'Cell occupied' if !board[subgame][cell].length
    raise 'Game is done' if winner?
    raise 'WOOP YOU WON' if won?(self)
    board[subgame][cell] = turn
    update_valid_subgames(string_cell)
    swap_players
  end

  private

  def won?(game)
    # some grid checking logic to see if there is a winner
  end

  def next_player
    turn == 'X' ? 'O' : 'X'
  end

  def winner?
    winner.length > 0
  end

  def swap_players
    self.turn = next_player
  end

  def update_valid_subgames(cell)
    self.valid_subgames = [cell]
  end
end
