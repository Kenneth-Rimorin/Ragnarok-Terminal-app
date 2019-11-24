# Ragnarok Game Terminal App

## Description
The application is a role play game which user need to defeat monsters in-order to bring peace to the town and to it's people. The user is ask to input name and select a class job from a Swordsman, Acolyte or Archer which have a different skills, The user then will be warp to the dungeon and start to fight and defeat monster one by one. The monster is going stronger as the level progresses. If the user defeated all the monsters then the game ends and successfully finished the game. otherwise if the player dies it's a game over and ask if the user wants to play again.

# System Requirement

## Minimum system requirement

|   |  Windows |
|---|---|
| Operating System |  Windows 7 |
|  CPU |  Core 2 Duo or Athlon X2 at 2.4 GHz |
| Memory |  2GB |
|  Hard drive | 100 GB  |

## Ruby Programming language
- ruby 2.6.3p62 (2019-04-16 revision 67580)

## Git
- git version 2.17.1

# Installation
1. Follow the instructions at https://www.ruby-lang.org/en/documentation/installation/ to download and install Ruby on you computer.

2. Follow the instructions at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git to install git

3. Clone or Download the repository from [Github](https://github.com/Kenneth-Rimorin/Ragnarok-Terminal-app)

4. On Cmd for Windows do the command cd to the root directory of the cloned or downloaded repository

5. Install the Ruby gem "Bundler"
```
On the Terminal, type the command "Gem install Bundler"
```
6. 
6. Install depencies (Ruby Gems)
- Colorize
```
On the Terminal, type the command "Gem install colorize"
```
- artii
```
On the Terminal, type the command "Gem install artii"
```
- Progressbar
```
On the Terminal, type the command "Gem install ruby-progressbar"
```
0r
```
On the Terminal, type the command "bundle install" to install all dependencies
```

# Run Application
- In the terminal run bash script file named "Ragnarok.sh"
```
type the command "bash Ragnarok.sh"
```
or

```
type the command "ruby ragnarok_game.rb"
```

# Features

1. Name should be four letters or longer, the application will not accept if the user input is less than 3 letters.

2. Class job selection, one for Swordsman, two for Acolyte and three for Archer. The application will not proceed if the user input is not among the selections and prompts the user to input again.

3. The user wil be able to access inventory and use items once the monster is defeated or killed.

4. The user will ask to play again once all the monster is successfully defeated or killed and when the player dies.