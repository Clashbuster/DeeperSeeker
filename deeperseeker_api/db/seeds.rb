# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#       riddles
#       t.string :name
#       t.integer :points
#       t.string :story_text
#       t.string :riddle_text
#       t.string :correct_answer


    # artifacts
    # t.string "name"
    # t.integer "points"

    Artifact.create(name: "The Wind Idol", points: 10)
    Artifact.create(name: "Joey's necklance", points: 5)
    Artifact.create(name: "Joey's necklance", points: 5)
    Artifact.create(name: "Joey's necklance", points: 5)
    Artifact.create(name: "Joey's necklance", points: 5)
    Artifact.create(name: "Joey's necklance", points: 5)
    Artifact.create(name: "Joey's necklance", points: 5)
    Artifact.create(name: "Joey's necklance", points: 5)


# easier problems
Riddle.create(name: "60th Triangle Number", points: 10, story_text: "Pico walks out of his home and looks up at the sky just long enough to see the sun for one last time. He's finally turned 40, and that means he's an adult now. So, he's going to do what all adult dwarfs do. Dig.

    He pulls out his trusty shovel and starts parting the earth. Before long he descends through the soil, leaving the sun behind. The only light comes from his head-lamp and the only noise from his labored breathing. But like all dwarves he is a tireless creature.
       
    After some time, and many, many meters of digging he falls into an empty cavern, but instead of hitting the soft earth he falls onto a slab of solid steel. He is unharmed, but he's perplexed by a massive metal door and a computer screen.
    
    The computer screen has a list of numbers and some instructions. He can't make sense of it, but maybe you can.", 
    
    riddle_text: "Computer screen :

    This is a sequence of triangle numbers : 1, 3, 6, 10, 15, 21, 28, 36, 45

    The 7th triangle number is 28 because 1+2+3+4+5+6+7 = 28. the same is true for every position in the sequence.

    What is the value of the 60th triangle number?",
    correct_answer: 1830)

Riddle.create(name: "Sum of Multiples", points: 10, story_text: "Pico entered some things into the computer screen. You don't exactly know what he entered, but you hope he listened to your advice. A light above the door blinked red for a few seconds. Then it slid open, allowing steam to escape through the cracks.
    
    Pico walked into a room made entirely out of chrome. A large screen to the left shows a large astronautical vehicle set up with some scaffolding, but each of the connectors for the scaffold blinked red.",
    
    riddle_text: "Alert! Before launch, all of the connectors must be mapped.
    
    The scaffold is 999 feet high. There must be ONE connector at every mutliple of 3 or 5 feet. In order for the computer to know you've completed the connector mapping, report the sum of the height for every single connector.",
    correct_answer: 233168)

# Riddle.create(name: "Difference of Squares", points: 10, story_text: "Pico")





# harder problems
Riddle.create(name: "Sum of all Primes", points: 80, story_text: "Pico ecounters a shrine that depicts thousands of The Great Deep's many tendrils, curling around every wall, furniture, and floor in the nearby area. He's not very scared because he know's the tendrils are all carved out of wood, but the scene is an eerie one. The central pedestal of the shrine contains a plaque surrounded by tall candles. The plaque say's the following words.

    The ultimate prime likes to know the power of all it's primes. Every last limb of The Great Deep is just as prime as the central entity itself.

    The Great Deep will greatly reward all who know his power",

    riddle_text: "The sum of all primes below 10 is 2+3+5+7 = 17

    Tell The Great Deep the sum of all primes below 2000000",
    correct_answer: 142913828922)