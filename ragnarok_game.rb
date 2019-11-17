#---RUBY GEMS----#
require 'artii'
require 'colorize'
require 'ruby-progressbar'
#---RUBY GEMS----#

#---VARIABLES----#
input_name = true
job_selection = true
dungeon = true
fight = true
battle_sword = true
battle_aco = true
battle_arch = true
first_battle = true
#---VARIABLES----#

#---HASHES----#
$swordsman_skill = {bash:1, magnum_break:3}
$acolyte_skill = {holy_light:1, magnus:2}
$archer_skill = {doube_strafe:1, charge_arrow:2}
$player = {hp:7, lvl:1, exp:0}
$usable_item = {}
$items = {dagger: "Combat Knife", armor: "Padded Armor"}
$monsters = [
    {monster:"Ghoul", hp:7, dmg:2, lvl:1, exp:100 },
    {monster:"Skeleton Archer", hp:9, dmg:2, lvl:3, exp:100 },
    {monster:"Lord Baphomet", hp:20, dmg:4, lvl:5, exp:400 }
]
#---HASHES----#

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

def monster_view
    puts "1 : #{$monsters[0][:monster].upcase}#{" "*10} - HP: #{$monsters[0][:hp]}#{" "*1} | Damage: #{$monsters[0][:dmg]} | Level: #{$monsters[0][:lvl]} | Experience: #{$monsters[0][:exp]}"
    puts "2 : #{$monsters[1][:monster].upcase} - HP: #{$monsters[1][:hp]}#{" "*1} | Damage: #{$monsters[1][:dmg]} | Level: #{$monsters[1][:lvl]} | Experience: #{$monsters[1][:exp]}"
    puts "3 : #{$monsters[2][:monster].upcase}#{" "*3}- HP: #{$monsters[2][:hp]} | Damage: #{$monsters[2][:dmg]} | Level: #{$monsters[2][:lvl]} | Experience: #{$monsters[2][:exp]}"
    #puts "4 : #{$monsters[3][:monster].upcase}#{" "*3}- HP: #{$monsters[3][:hp]} | Damage: #{$monsters[3][:dmg]} | Level: #{$monsters[3][:lvl]} | Experience: #{$monsters[3][:exp]}"
end
def fight_display
    fight = Artii::Base.new :font => 'slant'
    puts fight.asciify('Fight-Time!').colorize(:white)
end
def defeat
    defeat = Artii::Base.new :font => 'slant'
    puts defeat.asciify('Game Over').colorize(:white)
end
new_line
while input_name
    print "Please enter name: "
    name = gets.chomp.to_s
    if name.length < 4 then puts "Please enter longer character name".red
    else
        new_line
        puts "Welcome to Ragnarok #{name}"
        battle_name = name
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
    new_line
    puts "LORD BAPHOMET: HOW DARE YOU ENTER MY LAIR HUMAN!".red
    puts "LORD BAPHOMET: I AM BAPHOMET THE RULER OF THIS DUNGEON...".red
    puts "LORD BAPHOMET: ATTTTAAAACCCCKKK!!!!!!!".red
    enter=gets
    puts "Dungeon Monsters "
    new_line
    puts monster_view
    puts fight_display
    puts "Ghoul: Too late for you Human! I'm gonna kill you now!".red
    enter=gets
        while first_battle
            print "Battle Mode: 1 = Attack : "
            battle = gets.chomp.to_i
            if battle == 1 and job == 1
                while battle_sword
                    new_line
                    puts "Ghoul HP: " + "#{$monsters[0][:hp]} | #{battle_name} HP: " + "#{$player[:hp]} "
                    print "Please Select skill to use: 1 = Bash | 2 = Magnum Break: "
                    skill = gets.chomp.to_i
                        if skill == 1
                            new_line
                            puts "Monster received damaged".green
                            $monsters[0][:hp] = $monsters[0][:hp] - $swordsman_skill[:bash]
                            new_line
                        elsif skill == 2
                            new_line
                            puts "Monster received damaged".green
                            $monsters[0][:hp] = $monsters[0][:hp] - $swordsman_skill[:magnum_break]
                            new_line
                        else
                            new_line
                            puts "No Skill Selected, You missed."
                            new_line
                        end
                    
                        if $monsters[0][:hp] > 0
                        puts "Ghoul: Take this human! Rotten Breathe!".red
                        new_line
                        puts "Player recieved damaged".green
                        $player[:hp] = $player[:hp] - $monsters[0][:dmg]
                        else
                                break
                        end    

                        if $player[:hp] <= 0
                            puts "Player Died"
                            puts defeat
                            first_battle = false
                            dungeon = false
                            break
                        end

                end
            elsif battle == 1 and job == 2
                while battle_aco
                new_line
                puts "Ghoul HP: " + "#{$monsters[0][:hp]} | #{battle_name} HP: " + "#{$player[:hp]} "
                print "Please Select skill to use: 1 = Bash | 2 = Magnum Break: "
                skill = gets.chomp.to_i
                    if skill == 1
                        new_line
                        puts "Monster received damaged".green
                        $monsters[0][:hp] = $monsters[0][:hp] - $swordsman_skill[:holy_light]
                        new_line
                    elsif skill == 2
                        new_line
                        puts "Monster received damaged".green
                        $monsters[0][:hp] = $monsters[0][:hp] - $swordsman_skill[:magnus]
                        new_line
                    else
                        new_line
                        puts "No Skill Selected, You missed."
                        new_line
                    end
                
                    if $monsters[0][:hp] > 0
                    puts "Ghoul: Take this human! Rotten Breathe!".red
                    new_line
                    puts "Player recieved damaged".green
                    $player[:hp] = $player[:hp] - $monsters[0][:dmg]
                    else
                            break
                    end    

                    if $player[:hp] <= 0
                        puts "Player Died"
                        puts defeat
                        first_battle = false
                        dungeon = false
                        break
                    end
                end
            elsif  battle == 1 and job == 3
                while battle_arch
                new_line
                puts "Ghoul HP: " + "#{$monsters[0][:hp]} | #{battle_name} HP: " + "#{$player[:hp]} "
                print "Please Select skill to use: 1 = Bash | 2 = Magnum Break: "
                skill = gets.chomp.to_i
                    if skill == 1
                        new_line
                        puts "Monster received damaged".green
                        $monsters[0][:hp] = $monsters[0][:hp] - $swordsman_skill[:doube_strafe]
                        new_line
                    elsif skill == 2
                        new_line
                        puts "Monster received damaged".green
                        $monsters[0][:hp] = $monsters[0][:hp] - $swordsman_skill[:charge_arrow]
                        new_line
                    else
                        new_line
                        puts "No Skill Selected, You missed."
                        new_line
                    end
                
                    if $monsters[0][:hp] > 0
                    puts "Ghoul: Take this human! Rotten Breathe!".red
                    new_line
                    puts "Player recieved damaged".green
                    $player[:hp] = $player[:hp] - $monsters[0][:dmg]
                    else
                            break
                    end    

                    if $player[:hp] <= 0
                        puts "Player Died"
                        puts defeat
                        first_battle = false
                        dungeon = false
                        break
                    end
                end    
            end
        end
        
        end
    end
