# A. EarlyCloud

Wartune automization script. 

Every part that does not rely on a "*pat" (pattern) files is hardcoded. 
This means that it uses specific coodinates and should be run on GNU/linux, with resolutiuon 1920x1200 with google-chrome. Of course you can modify manually anything, including the time-zone.
I release it hoping that there will be somebody seriously interested in contributing.
The source code is "quite dirty" and is meant to become the basis for something better. 
Please let me know, so as to release the current working version and will discuss further.
As it was working after the early stages of the Cloud City patch, a lot of parts do not currently run, but you get the general idea.

# B. What does it do?
A lot of things. Imagine this: 4 players play Spire and in total they spend around 4*20 minutes. 
With the script's commands one player can login all the 4 of them and only waste 1-2 minutes of his life!
a
Apart from the fighting commands that require a bit of supervision, the general idea is to run

$ bash files/wartune-master-script.sh

and let your character run automatically and automate various tasks. So as you only do what you actually like and is fun, like MPDs.
Having it run in a different X display with Xephyr means that you can have your character automatically do arenas, dailies, MPDs,
Spire, ToK, etc. while you are using the same computer to do you work, brouwse the internet, chat with your friends, etc..
Depending on the computer power it is scalable. In my machine lags start after playing a 4-5th player simultaneously.
But as you all know the main cause of the lags is the #%!@&D* game design from R2 that even appear with 1 player only so be careful when you blame the script.

A brief description is this:


## B.1 Dailies:
The script takes care of some dailies. Any step of the below can of course be deactivated.

In particular, approximately every hour (or as you notice I also have a 4 hour cycle) does the following:

1. Refreshes.
2. Goes to farm and:
  1. harvests
  2. plants 1 x 1 hour kyanite gold seed, 8 1xhour gold seeds
  3. inspects all your friends' farms and only steals their kyanite seeds. It also energizes their trees.
3. Completes bounty quests every 30-31 minutes (Bounty helper must me enabled, it only selects Orange quests).
4. Contributes everything left to guild. (plunder defense)

Furthermore, this sequence "breaks":

1. Before WBs:
  1. refreshes,
  2. sets Armor Piercer as the unique skill,
  3. buffs with a lvl 4 power potion (it must be present in your inventory),
  4. attacks the WB in afk,
  5. after the WB event is over, it spends the whole amount of money by capturing astrals (sells the green/white and synthesizes the rest. If more than 1 red/yellow astral apperas it does not do anything).
  6. captures gold mines after the above, the "hourly" routine starts again.
     
2. Around 05:00 - 06:00 o' clock:
  1. It does solo Arena 20 times (only 5 times if on arena rewards' day (this must be reconfigured every month))
  2. Completes catacomb blitzing with crypt keys (and yes, after 30mins it stops, does the bounty, and then it returns to catacomb blitzing!)
  3. Performs all the guild's blessings
  4. Completes the Copper quest (it may miss it some times)
  5. Academy blessing, Fate stone spins, Sky trail horns
  6. Goes to altar for 2 hours
  
3. At Guild ToA it enters and energizes the tree.
4. Amethyst mines on their time.


All the class-related parts can be altered after configuring it.

## B.2 Specific Actions:
  1. Fights in group arena (using appropriate skills!)
  2. Cartographs the Wilds so as to find your targets easier. (Imagine you have to minor accounts --- you can let them cartograph wilds while your main character is  doing something else)
  3. Captures astrals "manually". Since the one-click functionality is broken, this make you spend your gold more productively.
  4. Farms different sylphs (the autoit version is faster though, and can be used this instead, using wine)
  5. Away-from-keyboard for different instances, like hitting specific keys for atoll bosses, spire, tok, mpds, etc. 

## B.3 TODO
  1. Participate in Battleground/Temple automatically
  2. Participate in Guild Battles attacking the Ward Tower
  3. Circuit quests
 
*** Note *** Some of them are applicable to the current version only.

# C. Customization
If you want it customized for your system, send me an email.
I know that a lot of you have spent more than $100, $1,000, $10,000 on this game, so your money/donation can now have an important and ***real*** impact. :D

# D. License
GPL v. 2.0: [http://www.gnu.org/licenses/gpl-2.0.html](http://www.gnu.org/licenses/gpl-2.0.html])
