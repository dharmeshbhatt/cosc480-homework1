class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
  if game.length != 2
    raise WrongNumberOfPlayersError
  end
  
  game.each do |player, strategy|
    if strategy.downcase != "p" and strategy.downcase != "r" and
        strategy.downcase != "s"
      raise NoSuchStrategyError
    end
  end

  player1 = game[0][0]
  strategy1 = game[0][1]
  player2 = game[1][0]
  strategy2 = game[1][1]

  h = Hash.new
  h['r'] = 's'
  h['p'] = 'r'
  h['s'] = 'p'

  if strategy1.downcase == strategy2.downcase
    return [player1, strategy1]
  elsif h[strategy1.downcase] == strategy2.downcase
    return [player1, strategy1]
  else
    return [player2, strategy2]
  end
end

def rps_tournament_winner(tournament)
  if tournament[0][0].instance_of?("String")
    return rps_game_winner(tournament)
  elsif tournament[0][0].instance_of?("Array")
    tournament.each do |tournament_instance|
      tournament[0] = rps_tournament_winner(tournament_instance)
    end
  end

  return rps_game_winner(tournament)
end
