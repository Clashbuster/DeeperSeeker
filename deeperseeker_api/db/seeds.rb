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
    Artifact.create(name: "Mox's dice", points: 3)
    Artifact.create(name: "Rubbish", points: 1)
    Artifact.create(name: "katrina's scarf", points: 15)
    Artifact.create(name: "Bahay's books", points: 13)
    



# easier problems

Riddle.create(name: "60th Triangle Number", points: 10, story_text: "Pico walks out of his home and looks up at the sky just long enough to see the sun for one last time. He's finally turned 40, and that means he's an adult now. So, he's going to do what all adult dwarfs do. Dig.

    He pulls out his trusty shovel and starts parting the earth. Before long, his entire body descends leaving the sun behind. The only light comes from his head-lamp and the only noise from his labored breathing. Don't worry, dwarves are tireless creatures.
       
    After some time, and many, many meters of digging he falls into an empty cavern, but instead of hitting the soft earth he falls onto a slab of solid steel. He is unharmed, but met by a massive metal door and a computer screen.

    Pico doesn't know what all of this dad-gum technology is. He's never seen a metal door, much less a computer screen. It's basically magic to him.
    
    The computer screen has a list of numbers and some instructions. He can't make sense of it, but maybe we can.", 
    
    riddle_text: "Computer screen :

    This is a sequence of triangle numbers : 1, 3, 6, 10, 15, 21, 28, 36, 45

    The 7th triangle number is 28 because 1+2+3+4+5+6+7 = 28. the same is true for every position in the sequence.

    What is the value of the 60th triangle number?",
    correct_answer: 1830)

Riddle.create(name: "Sum of Multiples", points: 10, story_text: "Pico entered some things into the computer screen. You don't exactly know what he entered, but you hope he listened to your advice. A light above the door blinked red for a few seconds. Then it slid open, allowing steam to escape through the cracks.
    
    Pico walked through the doorway without a thought in the world. The new room was another large with with a lot of metal panels and a little bit of earth. A large screen to the left showed an astronautical vehicle set up with some scaffolding, but each of the connectors for the scaffold blinked red. He stared at the keyboard with a blank face. Looks like it's our turn.",
    
    riddle_text: "Alert! Before launch, all of the connectors must be mapped.
    
    The scaffold is 999 feet high. There must be ONE connector at every mutliple of 3 and 5 feet. In order for the computer to know you've completed the connector mapping, report the sum of every connector's height.",
    correct_answer: 233168)



# Riddle.create(name: "Difference of Squares", points: 10, story_text: "Pico")

Riddle.create(name: "Largest Prime Factor", points: 9, story_text: "Pico heard our whisper in his head and enetered our code into the computer. A second door opened to reveal a colossal launch chamber with a huge ship in the center and a closed silo at the top. Pico stood in the middle of a massive man-made complex with many half-working lights, delapidated machines, and thin catwalks. The place was overgrown with plants, and some of the rooms had been caved in. There are weird red flags posted everywhere with an ominous black symbol depicting some hideous sillouhette that looked like an octopus of some kind.

    All Pico coulkd thing about was that the colossal chamber extended downward further than the eye could see, which delighted him because that meant he could keep going deeper while saving some energy.

    Pico took one step towards a nearby catwalk when a bored voice came over a nearby intercom.

    \"Before you proceed you need to present something worthy of it's majesty's attention, otherwise you'll be marked as an intruder by all defensive entities. If you'de like some help, just remember the holy phrase.

    It likes Strong things.\"", 

    riddle_text: "The prime factors of 13195 are 5, 7, 13 and 29.

    What is the largest prime factor of the number 600851475143?",
    correct_answer: 6857)

Riddle.create(name: "Palindrome Number", points: 6, story_text: "Pico walked down a catwalk. Periodically he finds some stairs leading downward. He seems happy with his progress so that should make us feel pretty good. Just as Pico crosses an open doorway somebody calls out.

    \"Hey! I see doubles!

    I see lots of doubles, and I want more of them.

    Can you give me doubles?

    I'll get angry if you don't give me more doubles.\"

    A man wearing a lab coat stood in a room. He doesn't seem to notice Pico or much of anything else. Pico waited for a long time, but the man simply repeated what he said, did a 90 degree turn and held up two fingers to the wall.

    Pico does not know what doubles means. Perhaps this is another chance for us to help.",

    riddle_text: "A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

    Find the largest palindrome made from the product of two 3-digit numbers.",
    correct_answer: 906609)

Riddle.create(name: "Smallest Common Multiple", points: 7, story_text: "As Pico descended he decided that he felt smaller and smaller by the second and he can't explain why.

After a minute he started talking to himself \"I don't think I can do this, I'm not sure if I'm good enough.
    
    This place is very scary and big, too big for a dwarf. The people are unfriendly and the environment is harsh.\"

    After a bit of this damnable talk he slid up against a wall and sat with his head hung low.

    The longer this goes on the worse our chances of success are. Pico's bad mood will make every he does worse. We need Pico to be feeling great if he's going to preform well for the rest of this adventure. Perhaps we can use a problem as a metaphor to teach him that he is not as small as he seems.",

    riddle_text: "2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?",
    correct_answer: 232792560)

Riddle.create(name: "The Great Trunk", points: 21, story_text: "Pico descended so far that he could no longer see the silo ceiling and instead could only see a dimly lit cavern going even deeper. He was near the bottom of astronautical vehicle. It was difficult to make out given the light, but near the base of the ship a monsterous tree twisted upwards and around the leg of the ship. It's gnarly branches and roots bent every which way as if in a desperate search in any random direction for more light. It made for a hideous sight.

    Pico had no idea such great things could thrive down here. Even thought it was clear that the tree was being effected by The Great Deep's presence, it's important to note that it could withstand the pressure for so long. I think it will be a good idea to remember things that are strong enough to live down here. Therefore, let's take note of truncatable primes. They are rare and valuable things.",

    riddle_text: "The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

    Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

    NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.",
    correct_answer: 748317)   

    # after the great deep is revealed
Riddle.create(name: "Even Fibbonacci numbers", points: 19, story_text: "Pico encountered a dusty tome on the ground. It was at least a thousand pages long and many of the pages were filled with some kind of code. He flipped through it aimlessly since he can't make sense of code nearly as well as we can.

    Eventually, he landed on a page with some english text. Since Pico is hopelessly curious he read it.

    \" My name is Herald, and I used to be scientist. That's right. Used to be. Now I'm a ground prophet. Ground prophets are the greatest, and like all ground prophets I know lots of things about The Great Deep.

    For Example, his Deepness seems to like things that are clean. That's why we clean our labs so much. Spend all day cleaning And with the clean comes the visions. Not everybody takes the visions well, but I can handle them just fine. That must mean I'm chosen or something. I've decided that the best thing I can do is try to interpret them. I have thoughts about what clean means.

    I've decided that even numbers are pretty clean, and we need more even numbers isn't that right Jerry?\"

    The passage becomes pure jibberish after that, and even Pico with his dullness finds it odd that Herald the scientist would be asking Jerry things in writing like that. In any case there is a box on the next page that asks a question.",

    riddle_text: "Since The Great Deep likes even numbers he wants to see their power too.

    Take every even number from a fibbonacci sequence where the values do not exceed 4 million.
        
    Then add them together and tell me the sum.",

    correct_answer: 4613732)

# Riddle.create(name: "Largest Prime Factor", points: 9, story_text)
Riddle.create(name: "Prime Pair Sets", points: 320, story_text: "Pico reached an end of a very long cat walk that doesn't appear to have any other way to descend. However, there are a number of oddly shaped ladders nearby. Since Pico is a dwarf I think we can trust him to put some things together.

    He eyed the ladders over and decides that he can stick them together end to end to make something that will work for him. This might be, but the exact measurements are a bit off.",

    riddle_text: "The primes 3, 7, 109, and 673, are quite remarkable. By taking any two primes and concatenating them in any order the result will always be prime. For example, taking 7 and 109, both 7109 and 1097 are prime. The sum of these four primes, 792, represents the lowest sum for a set of four primes with this property.

    Find the lowest sum for a set of five primes for which any two primes concatenate to produce another prime.",
    correct_answer: 26033)

Riddle.create(name: "Look at me, Look at you", points: 567, story_text: "Pico was getting pretty deep, and thr ship was bare in view. Things were starting to get a little more ominous. He turned a corner and on the wall there was an ominous message scribbled in what appears to be a brown paint of some kind, but the message was crude.

    \"Something is to be assumed. The Great Deep is something, and less than it, is greater than you, and THAT is very small.

    Let it be known that however big you are, The Great Deep is bigger still. Big enough for mountains.\"

    Pico was left very confused by this statement so let's make it easier on him by putting it in numbers.",

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
Riddle.create(name: "Sum of all Primes", points: 432, story_text: "Pico ecountered a shrine that depicted thousands of The Great Deep's many tendrils, curling around every wall, furniture, and floor in the nearby area. He was not scared because he know's the tendrils are all carved out of wood, but the scene is an eerie one. The central pedestal of the shrine contained a plaque surrounded by tall candles. The plaque said the following words.

    \"The ultimate prime likes to know the power of all it's primes. Every last limb of The Great Deep is just as prime as the central entity itself.

    The Great Deep will greatly reward all who know his power\"",

    riddle_text: "The sum of all primes below 10 is 2+3+5+7 = 17

    Tell The Great Deep the sum of all primes below 2000000",
    correct_answer: 142913828922)

Riddle.create(name: "Factorial Chain", points: 689, story_text: "Pico started feeling exhausted by all of the work he'd done, and at this point it's safe to assume that something was effecting the scientists minds.

    Pico broke out into a cold sweat. He started to stumble on his feet for a moment. He tried to catch himself on the catwalk railing, but missed. Pico fell onto the floor, motionless.

    Since we know everything about pico we get to see his dreams while he's passed out. Theres not a lot to see here, because Pico is so simple, but we can see a bunch of chains flying around.

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

    In the dark, his eyes finally adjusted and he saw a simple door made from petrified wood that looked older than the earth itself. A single, large eye was engraved in the center.

    At this point we should know that The Great Deep expects us to challenge ourselves, and judging from the problems we have had to solve so far we should have a pretty good idea of how hard we now must try to get through this final door.

    I've been working on something that is pretty astronomical for you, and it's safe to say that Pico would get us through even the door of The Great Deep.",

    riddle_text: "A positive integer, n, is divided by d and the quotient and remainder are q and r respectively. In addition d, q, and r are consecutive positive integer terms in a geometric sequence, but not necessarily in that order.

    For example, 58 divided by 6 has quotient 9 and remainder 4. It can also be seen that 4, 6, 9 are consecutive terms in a geometric sequence (common ratio 3/2).
    We will call such numbers, n, progressive.

    Some progressive numbers, such as 9 and 10404 = 102^2, happen to also be perfect squares.
    The sum of all progressive perfect squares below one hundred thousand is 124657.

    Find the sum of all progressive perfect squares below one trillion (10^12).",
    correct_answer: 878454337159)


Riddle.create(name: "Meet The Great Deep", points: 934, story_text: "The Door creaked open and on the other side a slithering noise came through. It was like a million rubber sponges in a soap bath rubbing up against each other Pico stepped inside and at that second he could finally feel something. Even his dull mind could be effected when he was this close.

    Pico shivered. A Booming voice roared through the room and it seemed to reach even us, almost as if The Great Deep could sense us through pico.

    \"You're messing with powers you don't understand.

    What you've done so far is no more than rubbing two particles of sand together on the beach of my realm.
    
    Turn back or you'll be stuck here forever.\"

    At this point I think we should keep using the same tactics that have gotten us this far. If math could get us through the petrified door and every other challenge, it could probably get us through this too. Let's come up with something and throw it at The Great Deep to see what happens.",

    riddle_text: "a Sierpinski number is k such that k2n+1 will be composite for EVERY n >= 1

    Give me the smallest proven Sierpinski number",

    correct_answer: 78557)


# After The Great Deep

Riddle.create(name: "U+V", points: 1293, story_text: "Pico whispers the Sierpinski number. Nothing happens for a few seconds, but The Great Deep stopped moving. Then we all feel the relief. The pressure on pico's mind dissipated. A few seconds later The Great Deep's giant body began to crumble and fall apart. All of it's mighty tendrils fell to the ground and it's towering body collapsed. Before long it was nothing more than a giant heap on the ground.

        Pico stood triumphant, and he didn't even know we were involved. We'de taken on something much greater than ourselves and done just fine. All it took was a bit of effort and knoweldge. It's incredible.
        
        With Pico's resiliance and our brains we can accomplish anything, including shedding light on this dark place. All we need to do is gain the power of UV",
        
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

