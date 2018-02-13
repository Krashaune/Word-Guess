
class SecretWord
attr_accessor :word_template, :secret_word
# generate secret word
  def initialize(word)
    @secret_word = secret_word
    @word_template = word_template
  end
end


class Visual
# display orginal visual
  def initialize(photo)
    @photo = photo
  end

end

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

# puts picture_1
# puts picture_2
# puts picture_3
# puts picture_4
# puts picture_5



# optional print sentence of number of guesses left

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

def get_random_word(word_pool)
  random_word = word_pool.sample
  return random_word
end

def check_guess(split_word, guess, word_template)
  i = 0
  split_word.each do |split_letter|
      if split_letter == guess
        word_template[i] = guess
      end
  i += 1
  end
end

# def check_guess(split_word, guess, word_template)
#   index = 0
#   split_word.each do |letter|
#     if "#{split_word[letter]}" == guess
#       word_template[index] = guess
#     end
#     index += 1
#   end
# end



# beginning of user interface Welcome user to game
puts "Welcome to K & H Word Guess"
puts "To play the game you will guess our secret word one letter at a time."
puts "You start out with 5 incorrect guess. USE THEM WISELY\n"
puts picture_5

random_word = get_random_word(word_pool)

puts random_word #this is a tester

# determine length of secret_word
# def create_word_template(random_word)
word_length = random_word.length
word_template = Array.new(word_length, "_" )
# end

split_word = random_word.split('')
# display visual and length of word
print word_template
puts "\n\n"

incorrect_guesses =[]
while incorrect_guesses.length < 5
  puts "Choose a letter"
  guess = gets.chomp

  if random_word.include? "#{guess}"
    puts "the word contains #{guess}"
    check_guess(split_word, guess, word_template)
    if word_template.include?("_") == false
      puts "Congratulations - you win!!"
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
    print "Game Over! The word was #{random_word}!"
  end
  puts "\n\n"
  puts "You have #{(5 - wrong_guess_count)} guess(es) left!"
  puts "\n\n"
  puts "The word doesn't include: #{incorrect_guesses}"
  puts "\n\n"
  puts "#{word_template}"
  puts "\n\n"
end
# *** allow user to lose
# — if reach max guesses#
# - losing message
# if user loses print answer to secret word



# —  ask user if they want to play again and start game over if yes
