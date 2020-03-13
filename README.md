### Morai Toire GO

## Link to Github source control repository

The GitHub for Mirai Toire GO is located at the following:

https://github.com/DannyField/Mirai_Toire_GO

Or directly download the GIT file

https://github.com/DannyField/Mirai_Toire_GO.git

## Statement of purpose and scope of application.

Have you ever played an old school adventure game for it to break the illusion when it states that it doesn’t understand a user entered command? 

Old text based adventure games had limited memory, so had limitation of what commands they could store. I set out to create an text based adventure game that would hopefully give you full control over what you truely desired. The concept was that, if you could do anything, what would you do. More to the point, the player could travel to any place and any time. You could go to West Germany during World War 2 and assassinate Hilter. You could do it. Go jam with the Beatles or Jimi Hendrix? Go do it. 

However, this complete freedom would mean an infitite array of possibilities. Even with the 'slight of hand' storylines path within the game to coerce the player, it was a massive undertaking. In the end, I had to submit a short based adventure game with a single story. The game would ask the user for what they wanted to do in the game. But with the ability to type what you wanted to.

i.e. *'punch guard in the face with your fist'*

The above input would show the correct reply. As long as a form of *'attacking'* is used and *'guard'* is included, the output should be correct. Future revisions would allow for more control on small details.

The problem it will solve is hopefully bordem. I'll attempt to hopefully bring a smile to the face of the user. Looking back I wished I had designed an app that would change the world. The goal is to make people laugh and smile, while allowing them to use their brain to figure out how to get out of the prison cell.

The target audience is for people that love old school text based adventure games. Based on 'tongue in cheek' comical and fantasy based adventure games. 

By entering in commands into the prompt, the user will possibly get some wild responses back. A limited vision of a controlled A.I. with some random replies back.

## Feature list included in application

# If statements / loops / conditions

Most of the heavy lifting is done with 'if' conditions. When the user enters a statement it will check whether the word matches in the array. The 'downcase' function would allow the user to enter both uppercase and lowercase and the condition will still be true. Another example is the stat system. When the player enters certain commands more than once, good or bad stats can add up and have some positive or negative results. I treated the level in blocks, where the user would need to get out each block [a loop] to progress via an 'Exit_flag'. 

![if conditions](./docs/Anger.png)

# Random output / input
The user input would go into a string and then check among an array. If the correct keyword was checked with the user input then the condition was met. This also meant trying to guess what people would type. Some of the code features random features such as dialogue. An example is when the user is trying to get their way out of the prison cell, the prompt changes with terms of encouragement.

![Random output input](./docs/random_speech.png)

# Importing text and the use of gems
Importing of files can make a program shine. To save time writing out lines of code, I was able to import CSV and Text files. Importing text documents saved by keeping the code cleaner, instead having many lines of extra code. It would also help with creating ascii art by having it stored in a text document. The use of gems also helped great unique outputs in the form of 'colorize' and 'faker'. Faker allowed for having mutliple names for the guard.

![Gems](./docs/Faker.png)

## User interaction and experience for the application.

The user will be prompted on what they want to do. They will be able to input commands and get a response. Error checking was done manually by entering in user commands to see what resposes were returned.
 
![Error Checking Spreadsheet](./docs/MiraiTorie_Error.png)

##	Develop a diagram which describes the control flow of your application. Your diagram must:
The flow chart shows a block system. Once the user enters a block, then need to enter the correct command to progress further. Much like any other adventure game, but due to being in a small confined space, the options may be more limited. Some options have further pathways, and it's something that I would like to explore more in future revisions.

![UML](./docs/Mirai_Torie_GO_UML.png)

## Implementation plan:
Trello was used for the process. 

![Trello](./docs/Trello.png)

## Future plans:
Next revision will include bug fixes. Making the stat system more stronger and accessiable across the whole program (Aug 2020)

Complete current story path and fill with more commands that the user may enter (Aug 2020)

Utilize the original Japanese story (contained in the src code 0.01) and adapt to this adventure. The idea was always about bringing items back from the past or future and being able to use them in other times. (Oct 2020)

A major feature that I would love to do is bring back the whole time travel aspect. Utilizing an online medium such as retrieving information from the internet would be great. The original CSV file that is included contains countires and places that the player could go to. (Mid 2021)

The final release would be the whole the basis of the time travelling feature. Including the ability to give players stories that they can jump to. Restricting some time lines in the early release and pushing to future versions of the game. (Mid 2021)

Complete with all time paths - Mid 2024 or later!

## How to run / install

Mirai Toire GO is to be ran in the terminal. Download download from the github

```
git clone https://github.com/DannyField/Mirai_Toire_GO.git
```

You will also need the following gems

```
gem install faker
gem install colorize
gem install my_gemmy
gem install artii
```

You must have ruby 2.7.0 installed. To run Mirai Toire GO open up a terminal and enter the command.

```
ruby Mirai_Toire_GO.rb
```

