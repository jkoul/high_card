# initial arrays representing building blocks of cards
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# Use these two arrays to generate a deck of cards.
cards = []
ranks.each_with_index do |rank, index|
  suits.each do |suit|
    cards.push([index, rank, suit])
  end
end

# prompt for player names
players = []
entry = ""
until (entry == "play")
  puts ("#{players.length} players so far. Enter a player name, or type 'play':")
  entry = gets.chomp
  if gets.chomp != "play"
    players.push (entry)
  else entry.clear
  end
end

# list players
players.pop
puts players
