require 'artii'
require 'colorize'

input_name = true
job_selection = true
new_line = "\n"

welcome = Artii::Base.new :font => 'slant'
puts welcome.asciify('R a g n a r o k').colorize(:white)
puts "- -" * 23 
puts "#{" " * 10}Welcome to the world of chaos and epic battles"

def red
colorize(:red)
end
def blue
colorize(:blue)
end
def green
    colorize(:green)
end

puts new_line
while input_name
    print "Plase enter name: "
    name = gets.chomp.to_s
    if name.length < 4 then puts "Please enter longer character name".red
    else
        puts "Welcome to Ragnarok #{name.blue}"
        break
    end
end
puts new_line
while job_selection
print "Please Select Class Job | 1 = Swordsman | 2 = Acolyte | 3 = Archer : "
job = gets.chomp.to_i
    if job == 1 
        job = 1 
        puts "Swordsman Selected".green
        break
    elsif job == 2
        job =2 
        puts "Acolyte Selected".green
        break
    elsif job == 3
        job = 3 
        puts "Archer Selected".green
        break
    else
        puts "No Job Selected".red
    end
        
end