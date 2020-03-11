require 'colorize'
require 'csv'
require 'artii'

#artii 'Mirai Toire GO'

a = Artii::Base.new :font => 'slant'
a.asciify('Art!')

#/////////////////////MIRAI_TOIRE_GO_v0.0.3/////////////////////////////////////////////////////////////
#//////////////////////////////////////////////////////////////////////////////////////////////////////

# Version rewrite
# I'm an idoit for trying to cram a 2000+ pathway adventure game into 2 days work
# This version will be stripped back.

#//////////////////////////////////////////////////////////////////////////////////This is the intro area
#//////////////////////////////////////////////////////////// This opens up a text as the intro and works.

File.open("start.txt").each do |line|
  puts line
end

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
  puts "You have the urge to go to the toilet. What do you do"
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
    puts line
  end

#possibly put music or a text here

#time_travel(dest)

#/////////////////////////////////////////////////////////////////////////////////////////////////
#///////////////STORY ONE////////////////////////////////////////////////////////////////////////

def act_one_block_one
puts '///////////////////////////act one//the scared princess//////////////////////'
puts 'wake up in cell, there is a girl there that wants to be saved'
puts 'you see the following objects - small wire.'
puts 'what do you want to do'

#look at import random
#look at importing time

choice = gets.chomp #local variable
item = "wire"

inventory = Array[]
choice_combo = Array[]

    if ['pick', 'take', 'grab', 'grasp' 'nab' 'hand', 'collect'].any? { |word| choice.downcase.include?(word) } && ['wire', 'small wire'].any? { |word| choice.downcase.include?(word) }
      # => true
        puts "You have picked up the #{item}"
        inventory.insert(0, item)
        inventory
    end

    if ['examine','look', 'glare'].any? { |word| choice.downcase.include?(word) } # => true
        puts '2'
    elsif ['look', 'glare'].any? { |word| choice.downcase.include?(word) } # => true
        puts '3'
    elsif ['sneak', 'ninja walk'].any? { |word| choice.downcase.include?(word) } # => true
        puts '4'
    elsif ['walk', 'sprint', 'skip'].any? { |word| choice.downcase.include?(word) } # => true
        puts '5'
    elsif ['climb'].any? { |word| choice.downcase.include?(word) } # => true
        puts '6'
    elsif ['swim', 'water'].any? { |word| choice.downcase.include?(word) } # => true
        puts '7'
    elsif ['drink', 'lick'].any? { |word| choice.downcase.include?(word) } # => true
        puts '8'
    elsif ['talk', 'chat', 'discussion', 'lecture' 'swear'].any? { |word| choice.downcase.include?(word) } # => true
        puts '9'
    else
    return
  end


end



act_one_block_one

#////////////////Once block one condition is satified, the player will get to block two

#block two is doing something with the wire
#use wire on necklance to dangle in front of guard


#////////////////////once block two is satified, then 

#use wire on necklance to dangle in front of guard, he falls alseep and you can 

#////////////////////

#steal his keys to unlock the door


#p inventory
p "we are out of method"

















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










=begin





# it might be good to have it exit the method. Maybe a while loop that if the player is in the toilet area, then it loops.
# it will help with the time travelling aspect as the loop can check if see where the player is
# It might also be a case that I can use METHOD's for within areas even. Such as calling a function within a function

if toilet_choice == 'hello'
  return room #by using return and method, I am able to escape this method and run the other method! Success!!
else
  return
end






if ['toilet', 'walk', 'run', 'crawl'].any? { |word| user.downcase.include?(word) } # => true
  toilet #this will run the method
  else
  puts 'need to do something' 
end













def sun
  puts "are you serious? Why would you want to do to the sun. It's over 1 million degrees!"
  puts "are you sure - yes or no"
  crazy = gets.chomp

  if crazy == 'yes'
    puts "You appeared on the sun for a fraction of a millisecond and burst into flames. you are dead"
  else
    puts "I'm glad you saw reason"
  end
end








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

puts "yay" if [1, 2, 3].all? { |i| (1..9).include?(i) }
# => "yay"

puts "nope" if [1, 2, 3, 'A'].any? { |i| not (1..9).include?(i) }
# => "nope"

# another one might be - but it requires 'set'


# p ARGV
# #argv will always be an array and accessable

# if ARGV = 'god'
#    puts "you are in god mode"
#  end

=end