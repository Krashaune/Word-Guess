

class SecretWord

attr_accessor :word_template, :secret_word
# generate secret word
  def initialize(word)
    @secret_word = secret_word
    @word_template = word_template
  end

# display length of word with  _ _
end

def get_random_word(word_pool)
  random_word = word_pool.sample
  return random_word
end

# random_word = get_random_word(word_pool)

# the_word = SecretWord.new(random_word)
print random_word

class Visual
# display orginal visual
  def initialize(photo)
    @photo = photo
  end
# change visual based on incorrect guesses (get smaller, lose a piece, do something)
  # def print_photo(wrong_guess_count)
  #   case wrong_guess_count
  #   when == 0
  #     print photo 5/5
  #   when == 1
  #     print photo 4/5
  #   when == 2
  #     print photo 3/5
  #   when == 3
  #     print photo 2/5
  #   when == 4
  #     print 1/5
  #   when == 5
  #     print "Game Over!"
  # end

# optional print sentence of number of guesses left
end

word_pool = [
  "plant",
  "payment",
  "flood",
  "decide",
  "decorate",
  "throat",
  "vase",
  "adventurous",
  "rescue",
  "purple",
  "wistful",
  "nice",
  "swanky",
  "farm",
  "unused",
  "grieving",
  "alert",
  "earsplitting",
  "legal",
  "suggest"
]






# #Welcome user to game
# puts "Welcome to K & H Word Guess"
# puts "To play the game you will guess our secret word one letter at a time."
# puts "You start out with 5 incorrect guess. USE THEM WISELY!"
#
# #display visual and length of word
# incorrect_guesses =[]
# puts "Choose a letter"
# guess = gets.chomp
# # if guess == correct letter
# # update secret word template
# # reprint visual and incorrect_guesses
#
# # if guess != correct letter
# incorrect_guesses << guess
# # reprint secret word template
# # update and print visual and  print incorrect_guesses


# 2. Allow user to guess letter by letter to determine secret word - puts and gets.chomp
#
# 3. if letter is apart of secret word display correct location within word and blank _ for remaining letters
#
# 4. if letter is not apart of the word reprint blank __ word
#
# 5. allow user to win
# — if all letters guessed before max of guess left
#
# 6. allow user to lose
# — if reach max guesses
#
# 7. if user loses print answer to secret word
# — if user wins print secret word and congratulate
# —  ask user if they want to play again and start game over if yes
