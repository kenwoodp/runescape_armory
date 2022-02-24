# Runescape General Store

Welcome to The Runescape Armory! You begin with a home page which allows you to either log in to an existing account or sign up a new account under your personal details.

Entering the shop, you'll find an interface where you can buy items for a set amount of XP. XP can be gained by mining rocks at the mine, if you press the 'Mine to gain XP' button, you'll be taken to the mining page, where you can select between Iron, Adamant and Rune rocks, each with a set XP gain.

After some span clicking on rocks, you'll be able to head back to the shop interface to purchase items. Each bronze weapon and armour piece can be purchased for 100XP and once they're added to your inventory, clicking on the item will take you to an upgrade screen, where you can spend XP to upgrade each item.

Each item in your inventory will alter your attack and defence level. Your attack level is determined by the upgrade level of your most upgraded weapon, whereas your defence level is determined by an aggregate of the upgrade level of each armour piece. Your attack and defence level then determines what your max hit is against the boss and the max that the boss is able to hit you for, respectively.

Once you're all geared up, click the 'Fight the Boss!' button in the top left hand side of the shop screen. Once on this page, you'll be able to attack the boss. On each attack, the boss's health is reduced, determined by your attack level, and the user's health is subtracted subsequently. If the boss's health reduces to 0, you'll enter a win screen where you can choose to play again, if your health is reduced to 0, you'll enter a death screen where you can go back to the shop to gear up and try again!

If during the fight, your health drops dangerously low, you can go back to the shop to buy chicken for 500XP each, which will increase your health by 10, up until your max health of 100.

Try it for yourself here at: https://runescape-general-store.herokuapp.com/

## My plan / approach

My approach began with setting up the login pathway, I then began building the tables for each dataset within my database. I included 1 table for the shop items, which stored each item's attack, defence, xp cost and health gained value. Along with an image that could be used as a button to send a put request to the server to update an empty inventory table.

I then included 6 tables, which housed all upgrades for each item which could be iterated through on the upgrade page, the values for this table were the upgrades' attack and defence level, xp cost, name and image. Before entering the upgrade page, I used ruby code to determine the current upgrade level of the item which had been selected to upgrade so that only items which are above the current upgrade level are shown on the upgrade screen.

The next table I created was the rocks which can be mined, each with a name, image and xp gained value. When clicking on the rock, a put request is used to update the xp column in the users table. The users table also includes a health column, which can be incremented by buying chicken, and is reduced when fighting the boss. The users table also includes the current attack and defence level.

Before entering the boss battle, the user and boss's max hit is determined by the attack and defence level of the user. When the attack button is pressed, a random number between the max and minimum hit for both the boss and the user is generated, and then subtracted from their respective health values.

## Cool tech that I used

I used a lot of ruby code on the server end to calculate values for many of the interfaces. I also used a lot of ruby code again on the server end to determine the display on the next page. For example, having to iterate through an array of each item level to determine the amount of items displayed on the upgrade page.

I also used a cool Runescape font that I found online, which has to first be imported into the style sheet before it can be used by the user.

I also used a page wrap for each page to set the background, which added a pleasent styling effect.

## Lessons you learnt

I learnt that when building a 'GET' request, you shouldn't pass the user's ID in the URL, as this can just be found by using the session hash instead. This could potentially lead to two things, the first being a security risk and the second being that it can cause an error in how the stylesheet links to each page, preventing the CSS for loading on each page.

I also learnt that when using a function to run SQL in ruby code, most returns are a string, which sometimes need to be converted to a string before calculations are made.

## Features to add in the future

There is a multitude of features to add in the future, you could add in several more items to the shop, including crafting items, which can be used on each other to create new items and gain XP.

A currency system other than XP could be introduced to buy and upgrade items. XP could then be used to level up at certain points. Your level could then multiply your attack and defence level.

A pickaxe could be bought from the store and upgraded, and each rock would have a minimum upgrade requirement to mine, since each rock has a different XP gained value, as it stands, there is no reason to mine any rock other than the rune rock, which earns the most XP.

There is plenty of other features that could be added to flesh out the experience for the user, and it would all be possible with some simple ruby code and some spare time.