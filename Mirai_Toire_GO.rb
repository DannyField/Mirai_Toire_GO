require 'colorize'
require 'csv'
require 'artii'
require 'faker'

#artii 'Mirai Toire GO'

a = Artii::Base.new :font => 'slant'
puts a.asciify('Mirai Torie GO').colorize(:yellow)

#/////////////////////MIRAI_TOIRE_GO_v0.0.3/////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////

# Version rewrite
# I'm an idoit for trying to cram a 2000+ pathway adventure game into 2 days work
# This version will be stripped back.

#//////////////////////////////////////////////////////////////////////////////////This is the intro area
#//////////////////////////////////////////////////////////// This opens up a text as the intro and works.

def start
File.open("start.txt").each do |line|
  puts line
end
end

start
#######################################################################################################
#///////////////FUTURE VERSION - CURRENTLY NOT SUITABLE FOR RELEASE - K.I.S.S//////////////////////////

# def location
#   puts 'A female voice appears from a tiny speaker somewhere in the room'
#   puts 'Thank you for using this device. Where and when would you like to go'.colorize(:red)
#   puts 'To make your travelling more efficent please type a single location and time'
#   puts 'Enter a location:'
#   print "> "
#   location = gets.chomp
#   puts "Great! You have answered #{location}".colorize(:light_blue)

#   csv_text = File.read("locations.csv")
#   csv = CSV.parse(csv_text, :headers => true)
#   cities = [] #empty array
#   cities = csv.filter do |row| #csv pushes into cities
#   if row["city"] == location
#     p 'working'
#   else
#     puts "Sorry, due to the time wrap cortex, that location is currently not available".colorize(:red)
#   end
#   end
# end

#############################################################################################################
#////////////////////////////////////////LOCATION METHOD/////////////////////////////////////////////////////

# def location
#   puts 'A female voice appears from a tiny speaker somewhere in the room'
#   puts 'Thank you for using this device. Where and when would you like to go'.colorize(:red)
#   puts 'To make your travelling more efficent please type a single location and time'
#   puts 'Enter a location:'
#   print "> "
#   input = gets.chomp
#   puts "Great! You have answered #{input}".colorize(:light_blue)
#   input #returns the result from the input location
# end

#puts location.class # should be a string and it also returned from the method [location]
#need to put in a condition that if the place isn't here, then puts 'that place is currently unavailable at this moment

#///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# This is the year method which will ask the user what time period they want to go to
#///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

# def year
#   puts "Please enter a year:"
#   print "> "
#   year = gets.chomp.to_s
#   puts "Fantasic! You have answered #{year}".colorize(:light_blue)
#   year = year.to_i
#     case year
#     when 0..500
#       puts "year 0 to 500AD"
#       return 1
#     when 501..1000
#       puts "year 501AD to 1000AD"
#       return 2
#     when 1001..1500
#       puts "year 1001 to the 1500"
#       return 3
#     when 1501..2000
#       puts "1501 to 2000"
#       return 4
#     when 2001..2020
#       puts "Current time : 2001 to 2020"
#       return 5
#     when 2020..7000
#       puts "The future 2020 to 3000 and beyond!"
#       return 6
#     else
#     puts "Time jump not defined. Set to random jump time"
#     return year
#   end
# end  

# /////////////////////////////////////////////////////////////////////////////////////////////////
# This is the body function that will decide on what how many turns before teleporting back to home
#//////////////////////////////////////////////////////////////////////////////////////////////////

def body_function
  
  sleep(2)
  puts "You have the urge to go to the toilet. What do you do".colorize(:yellow)
  print "> "
  body_function = gets.chomp #local variable
  #moves = 0

if ['wee', 'pee', 'piss', 'slash', 'tinkle', 'piddle', 'urinate', 'wee-wee', 'pee-pee', '1'].any? { |word| body_function.downcase.include?(word) } # => true
    puts "You unzip you pants and pee into the bowl. At first it seems awkward, but eventually you manage to do what you need to do"
    #moves = 3
  
elsif ['poo', 'poop', 'crap', 'defecation', 'excretion', 'dung', 'discharge', 'shit', 'turd', 'bog', '2', 'log'].any? { |word| body_function.downcase.include?(word) } # => true
    puts "Dropping your pants you place your bottom on the toilet seat. You drop a bog log into the swimming pool of poop"
    #moves = 5
  
elsif ['fart', 'fluff', 'puff', 'let rip'].any? { |word| body_function.downcase.include?(word) } # => true
    puts 'You sit on the toilet seat and let it rip. A little puff from the arse trumpet is all you can give.'
    #moves = 1
    
else
    puts "It seems that you don't need to go now. Maybe some fresh air would be nice."
    body_function
  end
end

#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#////////////////////////////TIME TRAVEL METHOD///////////////////////////////////////////////////////////////////

# def time_travel(dest)
#     puts "The toilet starts to make noises. A symphony of gears turning, clicks and whistles fill your ear drums"
#     puts "Your vision starts to gets blurry and you pass out"
#     puts "You have arrived in #{dest}"
    
#     # p dest.class #shows as a string

#     if ['Australia', 'Melbourne', 'Sydney', 'Tasmania', 'Perth', 'Goldcoast'].any? { |word| dest.downcase.include?(word.downcase) } # => true
#         puts "CHECK"
#         File.open("./Australia/Australia.txt").each do |line|
#         puts line 
#     end
#     end
    
#     if ['Hell'].any? { |word| dest.downcase.include?(word.downcase) } # => true
#         File.open("./Hell/Hell.txt").each do |line|
#         puts line
#     end
#     end

#     if ['Japan', 'Kyoto', 'Osaka', 'Tokyo'].any? { |word| dest.downcase.include?(word.downcase) } # => true
#         File.open("./Japan/Japan.txt").each do |line|
#         puts line
#         #japan
#     end
#     end

#     if ['Titanic', 'Ship'].any? { |word| dest.downcase.include?(word.downcase) } # => true
#         File.open("./Titanic/Titanic.txt").each do |line|
#         puts line
#     end
#     end

#     if ['West Germany', 'Germany', 'World War 2'].any? { |word| dest.downcase.include?(word.downcase) } # => true
#       File.open("./Titanic/Titanic.txt").each do |line|
#       puts line
#       end
#     end

#     if ['Middle East', 'Jerusalem'].any? { |word| dest.downcase.include?(word.downcase) } # => true
#       File.open("./Jerusalem.txt").each do |line|
#       puts line
#       end
#     end

# return

# end

#///////////////////////////////////////////////////////////////////////////////////////////////////////////////

#dest = location # grabs the result from location and stores to dest
#time_jump = year # grabs the result from year that the user chose and stores to time_jump
#p moves

body_function

File.open("start_p2.txt").each do |line|
    puts line #this is the head spin fainting section
    sleep(2)
  end

#possibly put music or a text here
#music

#time_travel(dest)

#/////////////////////////////////////////////////////////////////////////////////////////////////
#///////////////STORY ONE////////////////////////////////////////////////////////////////////////
def act_one_block_one
  
  sleep(3)
  puts "\e[H\e[2J" #this clears the screen

  a = Artii::Base.new :font => 'slant'
  puts a.asciify('---ACT  ONE---').colorize(:yellow)

#WHILE LOOP
#This will allow us to loop the code for as long as the condition is TRUE

  exit_flag = 0
  while exit_flag == 0
  puts 'STILL IN THE LOOP BABY'

puts "You wake up in an old brick prison cell. It smells of piss and rotten fruit.".colorize(:yellow)
sleep(1)
puts "As you wipe the sleep dust from your eyes you notice a figure standing in the corner.".colorize(:yellow)
sleep(1)
puts "It is a young beautiful woman dressed in old fantasy clothing. She smiles but looks away".colorize(:yellow)
sleep(1)
puts "You sit up and notice the thick prison bars that block your way out.".colorize(:yellow) 
sleep(1)
puts "A prison guard stands watch. He snots and spits in your general direction".colorize(:yellow)
sleep(1)
puts "You see the following objects - a small piece of wire.".colorize(:yellow)

puts [
  'What would you like to do', 
  'Give it another go champ',
  'What will you do?', 
  'I\'m sure you can figure something out',
  'Go for gold!',
  'Hang in there!',
  'Stay strong',
  'How much more encouragement can I offer you',
  'Surely you would know to grab the wire',
  'Do you need a hint?',
  'You can do it'
].to_a.sample.colorize(:green)
# Above code is a random output for the player

choice = gets.chomp #local variable
item = "wire"
inventory = Array[]
choice_combo = Array[]
evil = 0
good = 0

#/////////////the evil class
#p "The evil class is currently #{evil}"
#////////////////the evil class

####//////////////If the player select to collect the item then they leave this method to start block two/////////////////
    if ['pick', 'take', 'grab', 'grasp' 'nab' 'hand', 'collect'].any? { |word| choice.downcase.include?(word.downcase) } && ['wire', 'small wire'].any? { |word| choice.downcase.include?(word) }
      # => true
        puts "You have picked up the #{item}"
        inventory.insert(0, item)
        inventory
        return 1
    end
###////////////////////////////////////////////////////////////////////////////////////////////////////////////

    if ['look', 'glare', 'stare', 'examine', 'peak'].any? { |word| choice.downcase.include?(word) } && ['room', 'cell', 'around', 'outside'].any? { |word| choice.downcase.include?(word) }# => true
      puts "You look around the cell. You see thick bars preventing you from getting out. A guard stands near by watching you"
    end

#////////////////////////////Annoy the princess////////////////////

    if ['look', 'glare', 'stare'].any? { |word| choice.downcase.include?(word) } && ['girl', 'sexy', 'princess', 'chick', 'woman'].any? { |word| choice.downcase.include?(word) }# => true
      evil = evil + 1  
      puts "you look at the princess. She is beautful. But something appears to be different about her. Her ears are shaped like an elf. She can feel your eyes looking her up and down"
    end

    if ['look', 'glare', 'stare'].any? { |word| choice.downcase.include?(word) } && ['girl', 'sexy', 'princess', 'chick'].any? { |word| choice.downcase.include?(word) } && evil == 2 # => if looking at girl and evil stat is above 1
      evil = evil + 2
      puts "you continue to stare at the princess like a creep. You lick your lips by accident, and the remake doesn't make her feel any better. I probably wouldn't stare at any longer" 
    end

    if ['look', 'glare', 'stare'].any? { |word| choice.downcase.include?(word) } && ['girl', 'sexy', 'princess', 'chick'].any? { |word| choice.downcase.include?(word) } && evil >= 4 # => if looking at girl and evil stat is above 3
      evil = evil + 5  
      puts "Angered by your constant staring she calls for the guard to throw you into another cell. Which he does and thus ending your chance to escape"
      return 8
    end

#///////////////////////////////Look at guard//////////////////////////////////////////////////////////////////////

    if ['look', 'glare', 'stare'].any? { |word| choice.downcase.include?(word) } && ['guard', 'dude', 'gate keeper', 'door man', 'man'].any? { |word| choice.downcase.include?(word) } 
      puts "The guard notices you looking at him."
      puts "He snots:"
      puts [
        'What are ya looking at ye scum?', 
        'Quit looking at me',
        'What are you looking at?', 
        'Do you want me to beat you down?',
        'Do you want my autograph?!',
        'Got something to say?',
      ].to_a.sample.colorize(:green)
    end

#///////////////////////////////////ATTACK THE NPC///////////////////////////////////////////////////////////////////

    if ['punch', 'karate chop', 'kick', 'fight', 'beat', 'attack', 'throw wire'].any? { |word| choice.downcase.include?(word) } && ['guard', 'dude', 'gate keeper', 'door man', 'man'].any? { |word| choice.downcase.include?(word) }# => true# => true
      File.open("./BlockOne/ActOne_attackGuard.txt").each do |line|
        puts line
      end
    end

    if ['punch', 'karate chop', 'kick', 'fight', 'beat', 'attack', 'throw wire'].any? { |word| choice.downcase.include?(word) } && ['girl', 'woman', 'princess', 'chick', 'female'].any? { |word| choice.downcase.include?(word) }# => true# => true
      File.open("./BlockOne/ActOne_attackPrincess.txt").each do |line|
        puts line
      end
      return 8
    end

#///////////////////////////////////movement within area/////////////////////////////////////////////////////////////////

    if ['sneak','ninja walk', 'skip', 'walk', 'sprint' ,'run'].any? { |word| choice.downcase.include?(word) } # => true
      File.open("./BlockOne/ActOne_walk.txt").each do |line|
        puts line
      end
    end

    if ['climb'].any? { |word| choice.downcase.include?(word) } # => true
        puts 'You try to climb the walls, but you fall down on your bum. The guard laughs at you'
    end

    if ['drink'].any? { |word| choice.downcase.include?(word) } # => true
        puts 'There is nothing to drink'
    end
    
#///////////////////////////Talk with NPC//////////////////////////////////////////////////////////////////////////////

    if ['talk', 'chat', 'discussion', 'lecture' 'swear'].any? { |word| choice.downcase.include?(word.downcase) } && ['girl', 'sexy', 'princess', 'chick', 'woman'].any? { |word| choice.downcase.include?(word) }# => true# => true
        puts "You look at the princess and build up the courage to talk to her"
        good = good + 2
    end

    if ['talk', 'chat', 'discussion', 'lecture' 'swear'].any? { |word| choice.downcase.include?(word)} && ['guard', 'dude', 'gate keeper', 'door man', 'man'].any? { |word| choice.downcase.include?(word)}# => true
      puts "You walk over to the bars and ask the guard for his name."
      puts "The guard replies that his name is " + Faker::FunnyName.two_word_name
      good = good + 1
      end
    end
end

#//////////////////////////////////////END METHOD//////////////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

def the_end
  puts "this is the end of the game"
  puts "would you like play again?"
  
  puts "Y yes | N no"
  
  input = gets.chomp
    
    if input == "y" | "Y"
      start
    elsif input == "n" | "N"
      puts "Ok, formating laptop.."
      sleep(1)
      puts "."
      sleep(1)
      puts ".."
      sleep(1)
      puts "..."
      sleep(1)
      puts "Just kidding... Have a good day"
      return
    else
      puts "Sorry, incorrect letter"
    end
  end

result = act_one_block_one
p result 
# => 2

#///////////////////////////////////////////////////////////////////////////////////////////////////////////
#////////////////////////////////BLOCK TWO//////////////////////////////////////////////////////////////////
def act_one_block_two
  
  sleep(1)
  puts "\e[H\e[2J" #this clears the screen

  a = Artii::Base.new :font => 'slant'
  puts a.asciify('---ACT  two---').colorize(:yellow)

#WHILE LOOP
#This will allow us to loop the code for as long as the condition is TRUE

  exit_flag = 0
  while exit_flag == 0
  puts 'In the second block BABY'

puts [
  'What would you like to do', 
  'Give it another go champ',
  'What will you do?', 
  'I\'m sure you can figure something out',
  'Go for gold!',
  'Hang in there!',
  'Stay strong',
  'How much more encouragement can I offer you',
  'Surely you would know to grab the wire',
  'Do you need a hint?',
  'You can do it',
  'You have a piece of wire'
].to_a.sample.colorize(:green)
# Above code is a random output for the player

#look at import random

choice = gets.chomp #local variable
item = "wire"
inventory = Array[]
choice_combo = Array[] #was for possible use
evil = 0
good = 0

#/////////////the evil class
p "The evil class is currently #{evil}"

####//////////////the player can try to use this on the world/////////////////
    if ['use', 'prod', 'stick',].any? { |word| choice.downcase.include?(word.downcase) } && ['wire', 'small wire'].any? { |word| choice.downcase.include?(word) }
      # => true
        puts "You attempt to use the #{item}, but nothing happens."
    end
###////////////////////////////////////////////////////////////////////////////////////////////////////////////

    if ['look', 'glare', 'stare', 'examine', 'peak'].any? { |word| choice.downcase.include?(word) } && ['room', 'cell', 'around', 'outside'].any? { |word| choice.downcase.include?(word) }# => true
      puts "You look around the cell. You see thick bars preventing you from getting out. A guard stands near by watching you"
    end

#////////////////////////////Annoy the princess////////////////////

    if ['look', 'glare', 'stare'].any? { |word| choice.downcase.include?(word) } && ['girl', 'sexy', 'princess', 'chick', 'woman'].any? { |word| choice.downcase.include?(word) }# => true
      evil = evil + 1  
      puts "you look at the princess. She is beautful. But something appears to be different about her. Her ears are shaped like an elf. She can feel your eyes looking her up and down"
    end

    if ['look', 'glare', 'stare'].any? { |word| choice.downcase.include?(word) } && ['girl', 'sexy', 'princess', 'chick'].any? { |word| choice.downcase.include?(word) } && evil == 2 # => if looking at girl and evil stat is above 1
      evil = evil + 2
      puts "you continue to stare at the princess like a creep. You lick your lips by accident, and the remake doesn't make her feel any better. I probably wouldn't stare at any longer" 
    end

    if ['look', 'glare', 'stare'].any? { |word| choice.downcase.include?(word) } && ['girl', 'sexy', 'princess', 'chick'].any? { |word| choice.downcase.include?(word) } && evil >= 4 # => if looking at girl and evil stat is above 3
      evil = evil + 5  
      puts "Angered by your constant staring she calls for the guard to throw you into another cell. Which he does and thus ending your chance to escape"
      return 8
    end

#///////////////////////////////Look at guard//////////////////////////////////////////////////////////////////////

    if ['look', 'glare', 'stare'].any? { |word| choice.downcase.include?(word) } && ['guard', 'dude', 'gate keeper', 'door man', 'man'].any? { |word| choice.downcase.include?(word) } # => if looking at girl and evil stat is above  
      puts "The guard notices you looking at him."
      puts "He snots:"
      puts [
        'What are ya looking at ye scum?', 
        'Quit looking at me',
        'What are you looking at?', 
        'Do you want me to beat you down?',
        'Do you want my autograph?!',
        'Got something to say?',
      ].to_a.sample.colorize(:green)
    end

#///////////////////////////////////ATTACK THE NPC///////////////////////////////////////////////////////////////////

    if ['punch', 'karate chop', 'kick', 'fight', 'beat', 'attack', 'throw wire'].any? { |word| choice.downcase.include?(word) } && ['guard', 'dude', 'gate keeper', 'door man', 'man'].any? { |word| choice.downcase.include?(word) }# => true# => true
      File.open("./BlockOne/ActOne_attackGuard.txt").each do |line|
        puts line
      end
    end

    if ['punch', 'karate chop', 'kick', 'fight', 'beat', 'attack', 'throw wire'].any? { |word| choice.downcase.include?(word) } && ['girl', 'woman', 'princess', 'chick', 'female'].any? { |word| choice.downcase.include?(word) }# => true# => true
      File.open("./BlockOne/ActOne_attackPrincess.txt").each do |line|
        puts line
      end
      return 8
    end

#///////////////////////////////////movement within area/////////////////////////////////////////////////////////////////

    if ['sneak','ninja walk', 'skip', 'walk', 'sprint' ,'run'].any? { |word| choice.downcase.include?(word) } # => true
      File.open("./BlockOne/ActOne_walk.txt").each do |line|
        puts line
      end
    end

    if ['climb'].any? { |word| choice.downcase.include?(word) } # => true
        puts 'You try to climb the walls, but you fall down on your bum. The guard laughs at you'
    end

    if ['drink'].any? { |word| choice.downcase.include?(word) } # => true
        puts 'There is nothing to drink.'
    end
    
#///////////////////////////Talk with NPC///////////////////////////////////////////////////////////////////////////

    if ['talk', 'chat', 'discussion', 'lecture' 'swear'].any? { |word| choice.downcase.include?(word.downcase) } && ['girl', 'sexy', 'princess', 'chick', 'woman'].any? { |word| choice.downcase.include?(word) }# => true# => true
        puts "You look at the princess and build up the courage to talk to her. She seems friendly"
        puts "She tells you that she is a princess and has been locked up by the evil King " + Faker::FunnyName.two_word_name.colorize(:red)
        puts "You can't help notice her neck lace, it's ruby shinning bright"
        puts "She notices and gives you the necklace"
        puts "You have a " + 'necklace'.colorize(:green)
        return 2
    end

    if ['talk', 'chat', 'discussion', 'lecture' 'swear'].any? { |word| choice.downcase.include?(word)} && ['guard', 'dude', 'gate keeper', 'door man', 'man'].any? { |word| choice.downcase.include?(word)}# => true
      puts "You walk over to the bars and ask the guard for his name."
      puts "The guard replies that his name is " + Faker::FunnyName.two_word_name
      good = good + 1
      end
    end
end

result = act_one_block_two
p result 








#//////////////////////////ending//////////////////////////////////

case result
when 1
  return act_one_block_two
when 2
  return act_one_block_three
when 3
  return act_one_block_four
when 8
  return the_end
else
 puts 'incorrect'
#return year
end








#//////////////////exit block
#wire = nil
#



#///////////////////////

#////////////////Block TWO//////////////////

#block two is doing something with the wire
#use wire on necklance to dangle in front of guard




#////////////////////once block two is satified, then 

#use wire on necklance to dangle in front of guard, he falls alseep and you can 

#////////////////////

#steal his keys to unlock the door


#exit_flag = 




















# ############################################################################################
# ############################################################################################
# def japan
    
#     #This is the amount of plays you get in each world. Poo gives 5 whereas pee is only 3
#     # if bdfu_amount == 5
#     #     turns = 5
#     # else
#     #     turns = 3
#     # end

#     # if bdfu == 0
#     #    return
#     # else
#     # end

#     puts "What would you like to do?"
#     print "> "
#     bdfu = 5
#     p bdfu
    
#     choice = gets.chomp #local variable
    
#     if ['talk', 'chat', 'discussion', 'lecture' 'swear'].any? { |word| choice.downcase.include?(word) } # => true
#     File.open("./Japan/Japan_talk.txt").each do |line|
#     puts line 
#     end
    
#     elsif ['murder', 'kill', 'attack', 'punch', 'kick', 'thump', 'curb stomp', 'beat'].any? { |word| choice.downcase.include?(word) } # => true
#     File.open("./Japan/Japan_kill.txt").each do |line|
#     puts line
#     end
    
#     elsif ['fuck', 'sex', 'rape', 'bum', 'arse', 'headjob', 'molest'].any? { |word| choice.downcase.include?(word) } # => true
#     File.open("./Japan/Japan_sex.txt").each do |line|
#     puts line
#     end

#     elsif ['make love', 'love'].any? { |word| choice.downcase.include?(word) } # => true
#     File.open("./Japan/Japan_makelove.txt").each do |line|
#     puts line
#     end

#     elsif ['run', 'sprint', 'skip'].any? { |word| choice.downcase.include?(word) } # => true
#     File.open("./Japan/Japan_run.txt").each do |line|
#     puts line
#     end

#     elsif ['climb', 'tree'].any? { |word| choice.downcase.include?(word) } # => true
#     File.open("./Japan/Japan_climb.txt").each do |line|
#     puts line
#     end

#     elsif ['swim', 'water'].any? { |word| choice.downcase.include?(word) } # => true
#     File.open("./Japan/Japan_swim.txt").each do |line|
#     puts line
#     end

#     elsif ['drink', 'lick'].any? { |word| choice.downcase.include?(word) } # => true
#     File.open("./Japan/Japan_drink.txt").each do |line|
#     puts line
#     end
    
#     else
#     return
#   end
# end


# it might be good to have it exit the method. Maybe a while loop that if the player is in the toilet area, then it loops.
# it will help with the time travelling aspect as the loop can check if see where the player is
# It might also be a case that I can use METHOD's for within areas even. Such as calling a function within a function

# if toilet_choice == 'hello'
#   return room #by using return and method, I am able to escape this method and run the other method! Success!!
# else
#   return
# end

# Functions that sort of work.... but not perfectly
# class Array
#   def included_in? array
#     array.to_set.superset?(self.to_set)
#   end
# end
# p [1,2,4].included_in?([1,10,2,34,4]) #=> true
# p ['dad', 'mum', 'june'].included_in?(['dog', 'cat', 'mouse', 'dad', 'june']) # this is false, as it needs mum to also be in here
# p [1,4,5].included_in?([1, 4, 5, 19])


#this might work too

# puts "yay" if [1, 2, 3].all? { |i| (1..9).include?(i) }
# # => "yay"

# puts "nope" if [1, 2, 3, 'A'].any? { |i| not (1..9).include?(i) }
# => "nope"

# another one might be - but it requires 'set'

# p ARGV
# #argv will always be an array and accessable

# if ARGV = 'god'
#    puts "you are in god mode"
#  end