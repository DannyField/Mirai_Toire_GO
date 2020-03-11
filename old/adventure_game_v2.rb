require 'colorize'
require 'csv'

#This is the intro area
# This opens up a text as the intro and works.
File.open("one.txt").each do |line|
  puts line
end

#Had to split up the methods due to local variables
# This is the location method - asking the user where they want to go
def location
  puts 'A female voice appears from a tiny speaker somewhere in the room'
  puts 'Thank you for using this device. Where and when would you like to go'.colorize(:red)
  puts 'To make your travelling more efficent please type a single location and time'
  puts 'Enter a location:'
  location = gets.chomp
  puts "Great! You have answered #{location}".colorize(:light_blue)
  return location
end

puts location.class # should be a string and it also returned from the method [location]

# This is the year method which will ask the user what time period they want to go to
def year
  puts "Please enter a year:"
  year = gets.chomp.to_s
  puts "Fantasic! You have answered #{year}".colorize(:light_blue)
  year = year.to_i

    case year
    when 0..500
      puts "year 0 to 500AD"
      return 1
    when 501..1000
      puts "year 501AD to 1000AD"
      return 2
    when 1001..1500
      puts "year 1001 to the 1500"
      return 3
    when 1501..2000
      puts "1501 to 2000"
      return 4
    when 2001..2020
      puts "Current time : 2001 to 2020"
      return 5
    when 2020..3000
      puts "The future 2020 to 3000 and beyond!"
      return 6
  end
#might be better to put the case in here for the years
end  

#p year # if result that means that we are now in the main block, out from the year method
p year.class

p period

# This is the body function that will decide on what how many turns before teleporting back
def body_function  
  puts "Please leave a desposit..."
  body_function = gets.chomp #local variable
  if ['wee', 'pee', 'piss', 'slash', 'tinkle', 'piddle', 'urinate', 'wee-wee', 'pee-pee', '1'].any? { |word| body_function.downcase.include?(word) } # => true
    puts "You pee into the bowl"
  elsif ['poo', 'poop', 'crap', 'defecation', 'excretion', 'dung', 'discharge', 'shit', 'turd', 'bog', '2'].any? { |word| body_function.downcase.include?(word) } # => true
    puts "You poo into the bowl" 
  elsif ['fart', 'fluff', 'puff', 'let rip'].any? { |word| body_function.downcase.include?(word) } # => true
    puts 'You fart into the toilet bowl'
  end
end

body_function

def time_travel
    puts "The machine starts to make noises. A symphony of gears turning, clicks and whistles fill your ear drums"
    puts "Your vision gets blurry and you pass out"
    return
end

time_travel



puts "we are now out of the block"

#p defined? year

if (0..500).include? year
  p "fuck yes!!!!!!"
end


case year
  when 0..500
    puts "year 0 to 500AD"
  when 501..1000
    puts "year 501AD to 1000AD"
  when 1001..1500
    puts "year 1001 to the 1500"
  when 1501..2000
    puts "1501 to 2000"
  when 2001..2020
    puts "Current time : 2001 to 2020"
  when 2020..3000
    puts "The future 2020 to 3000 and beyond!"
end





=begin


########################### AUSTRALIA

def australia

File.open("Australia.txt").each do |line|
  puts line
end

end







# if (501..1000) === 

# end


puts "What would you like to do".colorize(:light_blue)
user = gets.chomp #this gets the first command.

#///////////////////////////////////////////////////////////////////////

############# MAIN ROOM ###################### 
def room
  puts "10"
end




#This is the method for the area of the toilet once the player arrives at it
def toilet
  puts "You arrive at the toilet. What is most odd is that it sits in the middle of the room"
  puts "There are thick wires and cables that protrode from the back of it, making their ways to"
  puts "the walls"
  puts "what you like to do now"
  toilet_choice = gets.chomp

# it might be good to have it exit the method. Maybe a while loop that if the player is in the toilet area, then it loops.
# it will help with the time travelling aspect as the loop can check if see where the player is
# It might also be a case that I can use METHOD's for within areas even. Such as calling a function within a function

if toilet_choice == 'hello'
  return room #by using return and method, I am able to escape this method and run the other method! Success!!
else
  return
end


# end of the class block


#the user must pull down their pants, otherwise they will pee or soil themselves




# print "> "


if ['toilet', 'walk', 'run', 'crawl'].any? { |word| user.downcase.include?(word) } # => true
  toilet #this will run the method
  else
  puts 'need to do something' 
end

#the time travel machine can only travel to some places
# keep it simple



#saves 




# puts "give us a thing to do"
# #str2 = 'I want to walk to the toilet'
# str2 = gets.chomp

# if ['toilet', 'run', 'walk', 'shit'].any? { |word| str2.downcase.include?(word) } # => true
# puts 'yes'
# else
# puts 'no'  
# end















puts "enter another string please"

str = gets.split
my_array = []

my_array = str

sub_array = ['fuck',  'jump',  'walk', 'hello']

puts str.class
puts sub_array.class

if str.include?(sub_array)
  puts "Holy shit it works"
end



string=[]
string = gets.chomp.strip

p string.class
yes = string.include?"walk"

if yes == true
  puts "you #{string}"
  toilet
else
  puts "nothing"
end

def run
  puts "run"
end



#i could create methods that are different levels that could be called

#could also have a random choice

def wildwest

end


def future

end

def dinosaur

end

def world_war_two

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