require 'artii'
require 'colorize'
require 'ruby-progressbar'


input_name = true
job_selection = true
dungeon = true

$usable_item = {}
$items = {dagger: "Combat Knife", armor: "Padded Armor"}


array = Array.new(1000)
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
def new_line
    puts "\n"
end
new_line
while input_name
    print "Please enter name: "
    name = gets.chomp.to_s
    if name.length < 4 then puts "Please enter longer character name".red
    else
        new_line
        puts "Welcome to Ragnarok #{name}"
        break
    end
end
$name = name.blue

new_line
while job_selection
print "Please Select Class Job | 1 = Swordsman | 2 = Acolyte | 3 = Archer : "
job = gets.chomp.to_i
    if job == 1 
        job = 1 
        new_line
        puts "Swordsman Selected".green
        break
    elsif job == 2
        job =2 
        new_line
        puts "Acolyte Selected".green
        break
    elsif job == 3
        job = 3 
        new_line
        puts "Archer Selected".green
        break
    else
        puts "No Job Selected".red
    end
        
end


def stash 
    puts "-------INVENTORY------"
    $items.each do |item, value|
        puts "#{item} : #{value}"
    end
    puts "-" * 20
end
def usable
    puts "-------USABLE ITEMS------".magenta
    $usable_item.each do |item, value|
        puts "#{item}   : #{value}".magenta
    end
    puts "-".magenta * 25
end

#--Loading
new_line
puts "Entering Ragnarok World"
new_line
name = ProgressBar.create(:total =>array.size)
array.each {name.increment;sleep 0.001}
#--Loading
new_line
puts "KAFRA".yellow  + ": Hello Hero! I'am Kafra, the Town Guardian before  \n#{" "*7}you begin your adventure please take this apples \n#{" "*6} and use it to restore your hit point."
new_line
enter = gets
puts "#{$name}: Thank you Kafra"
enter = gets
puts "#{$usable_item[:apple] = 5} Apples obtained".green + " (+) added to the inventory".green
enter=gets
puts "KAFRA:".yellow + " Okay, now listen carefully. Our town is currently \n#{" "*7}under attack by monsters from the dungeon and we \n#{" "*7}need you to seal that dungeon immediately!!"
enter=gets
puts "KAFRA:".yellow + " Please help us hero, we need you!"
enter=gets
puts "#{$name}: Okay! i will do it and seal the dungeon."
enter=gets

while dungeon
print "KAFRA:".yellow + " Oh Thank you so much hero! use @warp to enter the dungeon : "
enter_dungeon = gets.chomp.to_s
    if enter_dungeon == "@warp"
    new_line
    puts "Entering Prontera Dungeon Map"
    new_line
    name = ProgressBar.create(:total =>array.size)
    array.each {name.increment;sleep 0.001}
    break
    end
end
