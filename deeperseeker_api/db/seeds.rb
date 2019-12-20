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
    Artifact.create(name: "Doge collar", points: 7)
    Artifact.create(name: "A fraction of a bitcoin", points: 80)
    Artifact.create(name: "Taylor's number", points: 8177336127)
    Artifact.create(name: "The Monkey Idol", points: 8)
    Artifact.create(name: "The Earth Idol", points: 11)
    Artifact.create(name: "Devin's ring", points: 12)
    Artifact.create(name: "Tiffany's bracelet", points: 12)
    Artifact.create(name: "Drew's watch", points: 12)
    Artifact.create(name: "Robin's glasses", points: 12)
    Artifact.create(name: "A rock", points: 12)
    Artifact.create(name: "Drew's pills", points: 18)
    Artifact.create(name: "Mox's marbles", points: 3)
    Artifact.create(name: "Rubbish", points: 1)
    



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
    
    The scaffold is 999 feet high. There must be ONE connector at every mutliple of 3 or 5 feet. In order for the computer to know you've completed the connector mapping, report the sum of every connector's height.",
    correct_answer: 233168)



# Riddle.create(name: "Difference of Squares", points: 10, story_text: "Pico")

Riddle.create(name: "Largest Prime Factor", points: 9, story_text: "Pico entered in what you suggested, but he has no idea if it was correct. All he knows is a second door opened to reveal a massive launch chamber with a huge ship in the center and a closed silo lid at the top. Throughout the complex there are many half-working lights, delapidated machines, and thin catalks. The place is overgrown with plants, and some of the rooms have been caved in. There are weird red flags posted everywhere with an ominous black symbol

    Pico has never seen a computer or even a metal door. All he knows is the colossal chamber extends downward further than the eye could see, which delights him because that means he can keep going deeper while saving some energy.

    Pico took one step towards a nearby catwalk when a bored voice came over a nearby intercom.

    \"Before you proceed you need to present something worthy of it's majesty's attention, otherwise you'll be marked as an intruder by all defensive entities. If you'de like some help, just remember the holy phrase.

    It likes Strong things.\"", 

    riddle_text: "The prime factors of 13195 are 5, 7, 13 and 29.

    What is the largest prime factor of the number 600851475143?",
    correct_answer: 6857)

Riddle.create(name: "Palindrome Number", points: 6, story_text: "Pico walks some way down a catwalk. Periodically he finds some stairs leading downward. He seems happy with his progres so that should make us feel pretty good. Just as Pico crosses an open doorway somebody calls out.

    \"Hey! I see doubles!

    I see lots of doubles, and I want more of them.

    Can you give me doubles?

    I'll get angry if you don't give me more doubles.\"

    It's a man wearing a lab coat standing in a room, staring at the ceiling. He doesn't seem to notice Pico or much of anything else. Pico waits for a long time, but the man simply repeates what he said.

    Pico is so dumb that he doesn't know what doubles could possibly mean. Maybe we could help",

    riddle_text: "A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

    Find the largest palindrome made from the product of two 3-digit numbers.",
    correct_answer: 906609)

Riddle.create(name: "Smallest Common Multiple", points: 7, story_text: "As Pico descends he decides that he's feeling smaller and smaller by the second and he can't explain why. Perhaps we can use problem as a metaphor to teach him that he is not as small as he seems.",

    riddle_text: "2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?",
    correct_answer: 232792560)

Riddle.create(name: "The Great Trunk", points: 21, story_text: "Pico has descended so far that he can no longer see the unopened silo ceiling and instead can only see a dimly lit cavern going even deeper. He's near the bottom of astronautical vehicle. It's difficult to make out given the light, but near the base of the ship there is a colossal tree that appears to be growing into the bottom of the ship.

    Pico had no idea such great things could thrive down here. Things besides The Great Deep that is. Considering what we are headed towards I think we should take note of something that can withstand the incredible pressure of the great deep. Therefore, let's take note of truncatable primes. They are rare and valuable things.",

    riddle_text: "The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

    Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

    NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.",
    correct_answer: 748317)   

    # after the great deep is revealed
Riddle.create(name: "Even Fibbonacci numbers", points: 19, story_text: "Pico encounters a dusty tome on the ground. It's at least a thousand pages long and many of the pages are filled with some kind of code. He flips through it aimlessly since he can't make sense of a large string of digits like you can.

    By pure chance he lands on a page with some english text. Since Pico is hopelessly curious he reads it.

    \" My name is Herald, and I used to be scientist. That's right. Used to be. Now I'm a ground prophet haha! Ground prophets are the greatest, and like all ground prophets I know lots of things about The Great Deep.
    For Example, his Deepness seems to like things that are clean. That's why we clean our labs so much. Spend all day cleaning. But after contemplating the Deep visions for many days I've learned that clean can be interpreted in many ways.

    Since I'm a ground prophet it's my job to interpret the Deepeness's visions, and I've decided that even numbers are clean, and we need more even numbers isn't that right Jerry?\"

    The passage becomes pure jibberish after that, and even Pico with his dull mind finds it odd that Herald the ex scientist would be asking Jerry things in writing like that. In any case there is a box on the next page that asks a question.",

    riddle_text: "Since The Great Deep likes even numbers he wants to see their power too.

    Take every even number from a fibbonacci sequence where the values do not exceed 4 million.
        
    Then add them together and tell me the sum.",

    correct_answer: 4613732)

# Riddle.create(name: "Largest Prime Factor", points: 9, story_text)
Riddle.create(name: "Prime Pair Sets", points: 320, story_text: "Pico reaches an end of a very long cat walk that doesn't appear to have any other way to descend. However, there are a number of oddly shaped ladders nearby. Since Pico is a dwarf I think we can trust him to put some things together.

    He eyes the ladders over and decides that he can stick them together end to end to make something that will work for him. This might we, but the exact measurements are a bit off.",
    riddle_text: "The primes 3, 7, 109, and 673, are quite remarkable. By taking any two primes and concatenating them in any order the result will always be prime. For example, taking 7 and 109, both 7109 and 1097 are prime. The sum of these four primes, 792, represents the lowest sum for a set of four primes with this property.

    Find the lowest sum for a set of five primes for which any two primes concatenate to produce another prime.",
    correct_answer: 26033)

Riddle.create(name: "Look at me, Look at you", points: 567, story_text: "Pico is getting pretty deep now. He's about halfway down the chamber with the austronautical vehicle. He turns a corner and on the wall there is an ominous message scribbled in what appears to be a brown paint of some kind, but the message is crude. It's been splattered on.

    \"Something is to be assumed. The Great Deep is something, and less than it, is less than you, and THAT is very small.

    Let it be known that however big you are, The Great Deep is bigger still. Big enough for mountains.\"

    Pico is very confused by this statement so let's make it easier on us by putting it in numbers.",

    riddle_text: "Consider quadratic Diophantine equations of the form:

    x^2 – Dy^2 = 1

    For example, when D=13, the minimal solution in x is 649^2 – 13×180^2 = 1.

    It can be assumed that there are no solutions in positive integers when D is square.

    By finding minimal solutions in x for D = {2, 3, 5, 6, 7}, we obtain the following:

    3^2 – 2×2^2 = 1
    2^2 – 3×1^2 = 1
    9^2 – 5×4^2 = 1
    5^2 – 6×2^2 = 1
    8^2 – 7×3^2 = 1

    Hence, by considering minimal solutions in x for D ≤ 7, the largest x is obtained when D=5.

    Find the value of D ≤ 1000 in minimal solutions of x for which the largest value of x is obtained.",
    correct_answer: 661)

# medium problems
Riddle.create(name: "Sum of all Primes", points: 432, story_text: "Pico ecounters a shrine that depicts thousands of The Great Deep's many tendrils, curling around every wall, furniture, and floor in the nearby area. He's not very scared because he know's the tendrils are all carved out of wood, but the scene is an eerie one. The central pedestal of the shrine contains a plaque surrounded by tall candles. The plaque say's the following words.

    The ultimate prime likes to know the power of all it's primes. Every last limb of The Great Deep is just as prime as the central entity itself.

    The Great Deep will greatly reward all who know his power",

    riddle_text: "The sum of all primes below 10 is 2+3+5+7 = 17

    Tell The Great Deep the sum of all primes below 2000000",
    correct_answer: 142913828922)

Riddle.create(name: "Factorial Chain", points: 689, story_text: "Pico starts feel exhausted by all of the work he's doing, and at this point it's safe to assume that something scary is effecting everybody's minds.

    Pico breaks out into a cold sweat. He starts to stumble on his feet for a moment. He tries to catch himself on the catwalk railing, but misses. Timber! He crashes into the floort.

    Since we are omnipotent we get to see his dreams while he's passed out. Theres not a lot to see here, because Pico is so simple, but he can see a bunch of chains flying around.

    Maybe those chains represent something? We can't be sure, but let's err on the side of caution and help him unravel those.",

    riddle_text: "The number 145 is well known for the property that the sum of the factorial of its digits is equal to 145:

    1! + 4! + 5! = 1 + 24 + 120 = 145

    Perhaps less well known is 169, in that it produces the longest chain of numbers that link back to 169; it turns out that there are only three such loops that exist:

    169 → 363601 → 1454 → 169
    871 → 45361 → 871
    872 → 45362 → 872

    It is not difficult to prove that EVERY starting number will eventually get stuck in a loop. For example,

    69 → 363600 → 1454 → 169 → 363601 (→ 1454)
    78 → 45360 → 871 → 45361 (→ 871)
    540 → 145 (→ 145)

    Starting with 69 produces a chain of five non-repeating terms, but the longest non-repeating chain with a starting number below one million is sixty terms.

    How many chains, with a starting number below one million, contain exactly sixty non-repeating terms?",
    correct_answer: 402)


# Very hard problems
Riddle.create(name: "Sum of All Progressive Perfect Squares below one trillion", points: 880, story_text: "Pico has been through so much, and seen things he never could have imagined even existed. His mind has been bent and so have ours. He's made his way through all the doors and all the challenges, and hes descended through all of the chambers, rooms, caverns, and pathways. All of that effort has led him to this... this dark room at the end of a monsterous passage.

    In the dark, his eyes finally adjust and he sees a simple door made from petrified wood that looked older than the earth itself. A single, large eye was engraved in the center.

    At this point we should know that The Great Deep expects us to challenge ourselves, and judging from the problems we have had to solve so far we should have a pretty good idea of how hard we now must try to get through this final door.

    I've been working on something that is pretty astronomical for you, and it's safe to say that Pico would call it pure magic if he ever got see it. I think it is a problem that would impress even The Great Deep.",

    riddle_text: "A positive integer, n, is divided by d and the quotient and remainder are q and r respectively. In addition d, q, and r are consecutive positive integer terms in a geometric sequence, but not necessarily in that order.

    For example, 58 divided by 6 has quotient 9 and remainder 4. It can also be seen that 4, 6, 9 are consecutive terms in a geometric sequence (common ratio 3/2).
    We will call such numbers, n, progressive.

    Some progressive numbers, such as 9 and 10404 = 102^2, happen to also be perfect squares.
    The sum of all progressive perfect squares below one hundred thousand is 124657.

    Find the sum of all progressive perfect squares below one trillion (10^12).",
    correct_answer: 878454337159)


Riddle.create(name: "Meet The Great Deep", points 934, story_text: "The Door Creaks open and on the other side a slithering noise comes through. It sounded like a million rubber sponges in a soap bath rubbing up against each other Pico stepped inside and at that second he could finally feel something. Even his dull mind could be effected when he was this close.

    Pico shivered. A Booming voice echoed through the darkness and it seemed to reach even us, almost as if The Great Deep could sense us through pico.

    \"You're messing with powers you don't understand.

    You can't handle it.

    You aren't strong enough.

    I don't know how you got here, but I still have tricks up my sleeve.

    No amount of math will stop me, I still contain this strong body.\"

    Somehow we know The Great Deep is lieing. We've blown through every challenge he has given us, and now that we're here I think we can assume that he's scared, and therefore, grasping at straws. We should assume that the exact opposite of what he is saying will be effective against him.",

    riddle_text: "a Sierpinski number is k such that k2n+1 will be composite for EVERY n >= 1

    Give me the smalled proven Sierpinski number",

    correct_answer: 78557)


# After The Great Deep

Riddle.create(name: "U+V", points: 1293, story_text: "Pico took on The Great Deep. Pico is too stupid to be effected by anything, including The Great Deeps corruptive powers. We're not effected by corruptive powers because we're using Pico as a proxy. This is fantastic!. We can do anything! As long as Pico has our help we can take on even greater powers. The struggle never ends because there's always going to be a bigger fish to take down. Who's next?!
        
        I have an idea. Let's test our strength by conquring the power of light itself. Let's Solve U+V",
        
        riddle_text: "For any integer n, consider the three functions

        f_{1,n}(x,y,z) = x^(n+1) + y^(n+1) − z^(n+1)
        f_{2,n}(x,y,z) = (xy + yz + zx)*(x^n-1) + y^(n-1) − z^(n-1))
        f_{3,n}(x,y,z) = xyz*(x^(n-2) + y^(n-2) − z^(n-2))
        
        and their combination
        
        f_n(x,y,z) = f_{1,n}(x,y,z) + f_{2,n}(x,y,z) − f_{3,n}(x,y,z)
        
        We call (x,y,z) a golden triple of order k if x, y, and z are all rational numbers of the form a / b with
        0 < a < b ≤ k and there is (at least) one integer n, so that fn(x,y,z) = 0.
        
        Let s(x,y,z) = x + y + z.
        Let t = u / v be the sum of all distinct s(x,y,z) for all golden triples (x,y,z) of order 35.
        All the s(x,y,z) and t must be in reduced form.
        
        Find u + v.",
        correct_answer: 285196020571078987)

