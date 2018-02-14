
class Game
  attr_accessor :random_word, :word_template, :split_word
  # start game method
  def initalize
    @random_word = get_random_word
    @word_template = word_template
    @split_word = split_word
  end

  def get_random_word
    @random_word = WORD_POOL.sample
    word_length = @random_word.length
    @word_template = Array.new(word_length, "_")
    split_word = @random_word.split('')
    puts random_word
    print "#{split_word}" # tester
    print word_template
    return word_template
  end

  # def get_word_template
  #   # determine length of secret_word
  #   word_length = get_random_word.length
  #   word_template = Array.new(word_length, "_")
  #   split_word = random_word.to_s.split('')
  #   return word_template
  #   puts "\n\n"
  # end


  WORD_POOL = [
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


  # win game method
  def win_game
    puts "Congratulations - you win!!"
  end
  # puts "Would you like to play again? Type yes or no"
  # continue = gets.chomp
  # if continue == "yes"
  #

  # lose game method
  def lose_game
    print "Game Over! The word was #{@random_word}!"
  end
end
  # call method

  picture_1 = "
        ,-‘’’’-.
      ,'      _ `.
     '       )_)  |
    :              :
    |              /
     :            /
      `.        ,'
        `.    ,'
          `.,'
            `.   ,-._
              `-'    "

  picture_2 = "
         ,-‘’’’-.           ,-‘’’’-.
       ,'      _ `.       ,'      _ `.
      '       )_)  |     '       )_)  |
     :              :   :              :
     |              /   |              /
      :            /     :            /
       `.        ,'       `.        ,'
         `.    ,'           `.    ,'
           `.,'               `.,'
             `.   ,-._          `.   ,-._
               `-'                `-'    "
  picture_3 = "
         ,-‘’’’-.           ,-‘’’’-.           ,-‘’’’-.
       ,'      _ `.       ,'      _ `.       ,'      _ `.
      '       )_)  |     '       )_)  |     '       )_)  |
      :              :   :              :   :              :
      |              /   |              /   |              /
       :            /     :            /     :            /
        `.        ,'       `.        ,'       `.        ,'
          `.    ,'           `.    ,'           `.    ,'
            `.,'               `.,'               `.,'
              `.   ,-._          `.   ,-._          `.   ,-._
                 `-'                `-'               `-'     "

  picture_4 = "
       ,-‘’’’-.           ,-‘’’’-.
     ,'      _ `.       ,'      _ `.
     '       )_)  |     '       )_)  |
    :              :   :              :
    |              /   |              /
     :            /     :            /
      `.        ,'       `.        ,'
        `.    ,'           `.    ,'
          `.,'               `.,'
            `.   ,-._          `.   ,-._
              `-'                `-'
        ,-‘’’’-.           ,-‘’’’-.
      ,'      _ `.       ,'      _ `.
     '       )_)  |     '       )_)  |
    :              :   :              :
    |              /   |              /
     :            /     :            /
      `.        ,'       `.        ,'
        `.    ,'           `.    ,'
          `.,'               `.,'
            `.   ,-._          `.   ,-._
              `-'                `-'    "


  picture_5 = "
        ,-‘’’’-.           ,-‘’’’-.
      ,'      _ `.       ,'      _ `.
     '       )_)  |     '       )_)  |
    :              :   :              :
    |              /   |              /
     :            /     :            /
      `.        ,'       `.        ,'
        `.    ,'           `.    ,'
          `.,'               `.,'
            `.   ,-._          `.   ,-._
              `-'                `-'
         ,-‘’’’-.           ,-‘’’’-.           ,-‘’’’-.
       ,'      _ `.       ,'      _ `.       ,'      _ `.
       '       )_)  |     '       )_)  |     '       )_)  |
      :              :   :              :   :              :
      |              /   |              /   |              /
       :            /     :            /     :            /
        `.        ,'       `.        ,'       `.        ,'
          `.    ,'           `.    ,'           `.    ,'
            `.,'               `.,'               `.,'
              `.   ,-._          `.   ,-._          `.   ,-._
                `-'                `-'               `-'     "






  def check_guess(split_word, guess, word_template)
    i = 0
    split_word.each do |split_letter|
      if split_letter == guess
        word_template[i] = guess
      end
      i += 1
    end
  end


  # beginning of user interface Welcome user to game
  game = Game.new()

  puts "Welcome to K & H Word Guess"
  puts "To play the game you will guess our secret word one letter at a time."
  puts "You start out with 5 incorrect guess. USE THEM WISELY\n"
  puts picture_5

game.get_random_word
print @word_template




incorrect_guesses =[]
while incorrect_guesses.length < 5
  puts "Choose a letter"
  guess = gets.chomp

  if random_word.include? "#{guess}"
    puts "the word contains #{guess}"
    check_guess(split_word, guess, word_template)
    if word_template.include?("_") == false
      game.win_game
    end
    # *** allow user to win
    # — if all letters guessed before max of guess left
    # — if user wins print secret word and congratulate

  else
    incorrect_guesses << guess
  end
  # *** reprint visual and incorrect_guesses
  wrong_guess_count = incorrect_guesses.length

  # change visual based on incorrect guesses (get smaller, lose a piece, do something)
  case wrong_guess_count
  when 0
    print picture_5
  when 1
    print picture_4
  when 2
    print picture_3
  when 3
    print picture_2
  when 4
    print picture_1
  when  5
    game.lose_game
  end
  puts "\n\n"
  puts "You have #{(5 - wrong_guess_count)} guess(es) left!"
  puts "\n\n"
  puts "The word doesn't include: #{incorrect_guesses}"
  puts "\n\n"
  puts "#{word_template}"
  puts "\n\n"
end
  # # # *** allow user to lose
  # # # — if reach max guesses#
  # # # - losing message
  # # # if user loses print answer to secret word
  # #
  # #
  # #
  # # # —  ask user if they want to play again and start game over if yes
