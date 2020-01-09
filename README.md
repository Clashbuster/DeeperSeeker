# Depper Seeker

Deeper Seeker is a simple webapplication game with lots of riddles, digging, and artwork.

The game has not been deployed yet but it is ready for use if you would like to play.
In order to play the game right now you must download a clone of this repository then follow these steps in order. You must put all of these commands into your terminal.

1. Make sure you have ruby installed :

```
ruby -v
```

If ruby is not installed, install ruby. by following these instructions https://www.ruby-lang.org/en/documentation/installation/

2. Make sure SQLite3 is installed :

```
sqlite3 --version
```

if not, https://www.sqlite.org/index.html

3. Make sure rails is installed :

```
gem install rails
```

Verify rails has been installed :

```
rails --version
```

4. Go to the root directory of the Deeper Seeker repository. Type :

```
open index.html
```

5. Go into the Deeper Seeker api directory. Type :

```
rails db:migrate
```

```
rails db:seed
```

```
rails s
```

6. At this open you should have the HTML file open in your browser and the backend api should be running. The last step is to refresh the web page. The game should now work locally on your machine.

This game features tons of artwork, story, and fun math based programming challenges. As you progress through the game you will recieve points from two sources. You will get a flat rate from the questions, and a randomized rate from artifacts. You will recieve one artifact with each completed question. Your points will be updated on the page as you progress, and once you beat or lose the game your points and name will be presisted in the database.

you are allowed 4 skips/uncorrect answers. Once you have reached this limit you will lose the game! Also, Pico will get progressively unhappier and his heart will take more arrows the more questions are not completed.

Once you have reached the leaderboard screen you are allowed to erase your score if it is unsatisfactory.

Good luck and have fun!