puts 'Lets start the game'
puts 'Generating random number'

randomNumber = rand(10)
isGuessRight = false

while not isGuessRight 
    puts "What's your gess?"
    guess = gets.chomp 
    guessNumber = guess.to_i
    isGuessRight = randomNumber == guessNumber
    puts 'You are right, congrats!!' if isGuessRight
    unless isGuessRight 
        if guessNumber > randomNumber 
            puts 'Too high, try again'
        else
            puts 'Too low, try again'
        end
    end
end
