# p str = "Welcome to Coder Academy"
# p str [5,5]

# puts str.index (/ World / i)


#p a = "Hello World"
# p a = gets.strip
# p a.scan (/w+/) {|w| puts "<<#{w}>> " }
# p a.class



puts "enter a string"
#my_string = "abcdefg"
my_string = gets.chomp.to_s

#array = ["walk", "run", "jog", "swim", "crawl"]

substring = 'joke'


if my_string.include? substring
   puts "String includes 'cde'"
end



puts "enter another string please"

str = gets.split
my_array = []

my_array = str

#str.split(" ")
#puts str

#puts str
#puts my_array
#puts my_array[2]

#my_array2 = ['fuck']
sub_array = ['fuck',  'jump',  'walk', 'hello']

puts str.class
puts sub_array.class

if str.include?(sub_array)
  puts "Holy fucking shit it works"
end


puts 'fucker'



=begin
puts '/////////////////////////////////////'

# def string_reader(my_array, my_string) 
#   my_array.each do |i|
#   puts i == my_string ? "match found" : next
#   end
# end 

def string_reader(my_array, my_string) 
  my_array.each do |i|
    if i == my_string
      return true
    end
  end 
  return false
end 

my_string = gets.split
p my_string.class
p my_string
p string_reader(["fuck", "hello"], my_string)


=end

#haystack = ["haystack"]
# needles = ["whatever", "pretty"]

# if haystack.match(Regexp.union(needles))
#   puts 'found'
# end

# p /hay/ =~ 'haystack'   #=> 0
# p /y/.match('haystack') #=> #<MatchData "y">

# p /needle/.match('haystack') #=> nil

# p /danny/.match ('danny is cool') #= true




# a = ['cat','dog','elephant']

# b = gets.split
# p b.class

# c = []
# p c.class

# p a.any?{ |i| i.include? 'dog' }
# #=> true
# p a.any? { |w| w.include?('nope') }
# #=> false
# p b.any? { |i| i.include?}


#str='General Merchandise Stores, Automotive Parts And Accessories Stores, Motor Vehicle Supplies And New Parts Wholesalers, Tire Dealers '


#['general merchandise'].any? { |word| str.downcase.include?(word) } # => true



=begin

puts "/////////////////////////////////////////////////////////"

puts "You wake up in a room. You see in the middle of the room is a toilet. Upon closer inspection you notice thick wires leading from the base of the toilet to the walls. What would you like to do?"

def walkduck
  puts "walk like a duck"
end

string=[]
string = gets.chomp.strip

p string.class
yes = string.include?"walk"

if yes == true
  puts "you #{string}"
  walkduck
else
  puts "nothing"
end

#grabs each word and stores in an array


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


#other locations

#moon
#mars
#sun "Really? you want to go to the sun?"


=end

=begin



You wake up in a white room. What makes this room very odd is the toilet placed right in the middle of the room. There is a 
table that has objects on it. As you walk closer to the table, you see a black box, a screwdriver, and a jug of water.

what would you like to do




time travelling toilet


enter



time paths

today

past / present / future

yesterday

=end