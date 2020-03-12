require 'colorize'
require 'csv'

#v0.0.1

#This is the intro area
# This opens up a text as the intro and works.
File.open("one.txt").each do |line|
  puts line
end

###########################################################################################3
# Had to split up the methods due to local variables
# This is the location method - asking the user where they want to go

#FUTURE VERSION - CURRENTLY NOT SUITABLE FOR RELEASE - K.I.S.S
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

def location
  puts 'A female voice appears from a tiny speaker somewhere in the room'
  puts 'Thank you for using this device. Where and when would you like to go'.colorize(:red)
  puts 'To make your travelling more efficent please type a single location and time'
  puts 'Enter a location:'
  print "> "
  location = gets.chomp
  puts "Great! You have answered #{location}".colorize(:light_blue)
end

#puts location.class # should be a string and it also returned from the method [location]
#need to put in a condition that if the place isn't here, then puts 'that place is currently unavailable at this moment
#//////////////////////////////////////////////////
# This is the year method which will ask the user what time period they want to go to

def year
  puts "Please enter a year:"
  print "> "
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
end  



# This is the body function that will decide on what how many turns before teleporting back
def body_function  
  puts "Please leave a desposit..."
  print "> "
  body_function = gets.chomp #local variable
  if ['wee', 'pee', 'piss', 'slash', 'tinkle', 'piddle', 'urinate', 'wee-wee', 'pee-pee', '1'].any? { |word| body_function.downcase.include?(word) } # => true
    puts "You pee into the bowl"
    return time_travel
  elsif ['poo', 'poop', 'crap', 'defecation', 'excretion', 'dung', 'discharge', 'shit', 'turd', 'bog', '2'].any? { |word| body_function.downcase.include?(word) } # => true
    puts "You poo into the bowl"
    return time_travel 
  elsif ['fart', 'fluff', 'puff', 'let rip'].any? { |word| body_function.downcase.include?(word) } # => true
    puts 'You fart into the toilet bowl'
    return time_travel
  end
end

def time_travel(location)
    puts "The machine starts to make noises. A symphony of gears turning, clicks and whistles fill your ear drums"
    puts "Your vision gets blurry and you pass out"
    puts "you appear in #{location}"
      
    if location == "Japan"
      File.open("Japan.txt").each do |line|
      puts line
    end
  end
end



#p year # if result that means that we are now in the main block, out from the year method
location
year
body_function
time_travel(location)












########################### AUSTRALIA

def australia

File.open("Australia.txt").each do |line|
  puts line
end

end







=begin





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
# though this feature is way too complex at the moment







if ['toilet', 'walk', 'run', 'crawl'].any? { |word| user.downcase.include?(word) } # => true
  toilet #this will run the method
  else
  puts 'need to do something' 
end

#the time travel machine can only travel to some places
# keep it simple











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