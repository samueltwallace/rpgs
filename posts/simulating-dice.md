---
title: Mathematically Simulating Any Die with a d6
author: Sam W
---



I devised a way to simulate any die with just d6's. It's not very practical, but somewhat interesting.


# Any Die Can be Reduced to a d2

This isn't a hard thing to wrap your head around, take the total range of your die and divide into 2 equal parts: call rolling in one range a 1, the other a 2. For example, rolling d20 and dividing into even and odd, or 1-10 and 11-20 works. For us, we will focus on d6's and dividing into the ranges of 1-3 and 4-6.

This will become relevant later, but let's label the faces of our 'd2' a 0 and a 1. Yes, we will be using binary numbers.



# You Can Use a d2 to Generate Any Other Die Result

This isn't obvious. The procedure is as follows:

1. Choose a die to simulate (e.g. d20).
2. Write the number of faces on the die in binary (e.g. $20 = 2^4 + 2^2$, so in binary 20 is 10100).
3. Now roll as many d2's as there are digits in the binary number, and assign an order to them as digits.
4. Write out a binary number by writing the d2 rolls (in order), converting 1's to 0's and 2's to 1's.
5. Convert your binary number back into base 10.
6. Discard if your number lies outside the range of the die (e.g. 1-20 on a d20).

## How do I do Binary?

It's not too bad: you just need to be able to multiply by 2.

List out some powers of 2: start with 1, multiply by 2, then multiply by 2 until you are over halfway to your desired number.

Then go down the list and start adding:

1. Start with your biggest power of 2, and circle it.
2. If the second biggest power of 2 plus the circled numbers is bigger than your desired number, then ignore it. If it's still smaller than your desired number, circle it.
3. Repeat with your other powers of 2, going from biggest to smallest.
4. If you ever equal your desired number, quit, and you can now determine your binary.

Take your circled powers of 2, and count back what number they are on the list, starting from smallest. If you circled the number, record a 1, otherwise record a 0. Then list the 0's and 1's for each number on the list, going from biggest to smallest, and writing the 0's and 1's left to right.

---
title: Example: 20
author: Sam W
---

Let's start with powers of 2: 1, 2, 4, 8, 16, and that's all we need (16 is more than half of 20, while 8 was not).

Now we start adding: 16 is automatically circled. Now we check: 16 + 8 is bigger than 20, so we ignore 8. 16 + 4 is 20, so we quit and can determine binary.

We used 16 and 4, so we list ones in those digit places in our number and a 0 for every other power of 2 (remembering we go biggest to smallest on the list and write left to right): 10100.

So we now have 20 in binary: 10100.

How do we convert this back into base 10? We take our digits and add back for each power of 2 in the corresponding place: 10100 was a 16 and a 4; adding, 20.

---
title: Harder Example: 100
author: Sam W
---

Powers of 2: 1, 2, 4, 8, 16, 32, 64 (and we are now over halfway).

100 = 64 + 32 + 4 (we circle these and discard all others)

Then list out digits: 1100100

# Why Does this Work?

Every number in your range needs a unique string of 0's and 1's to write in binary, and so the rolls needed to generate that string are unique. The individual d2 rolls do not determine or affect anything other than their digit, and each digit is equally likely, so every number in your range is equally likely.

I'm not sure a mathematical proof is quite the appropriate medium here to convey why this works, but think of it this way: to generate a number between 0 and 20, it is the same as generating its binary representation. Every binary representation is equally likely (as each digit is equally likely), so every number has an equal chance of appearing.

# Advantages and Disadvantages

Advantages:

 - Since any die may be reduced to a d2, we don't have to use d6's: we can use anything we want.
 - Only requires 1 die for any roll (and maybe a calculator)
 - Works for *any* die, not just your standard rpg die (e.g. do a 1d67 with this).
 
 
Disadvantages:

 - Eats up time. Very seriously so. This is probably slower than going to the store and buying the relevant die.
 - You may have to run it several times to get something in the range.
 
 
 
# Examples


Lets roll 1d100 using d6. we only need up to 64 in our binary, so we only need 7 d6's.

[1d6] -> = 4

[1d6] -> = 6

[1d6] -> = 2

[1d6] -> = 2

[1d6] -> = 1

[1d6] -> = 2

[1d6] -> = 2

Now we turn these into 0's and 1's:

1100000

And turn into base 10: 64 + 32 = 96.


Okay, another one. Let's roll 1d176 using d20's. We need 128 in our binary, so 8 d20's. I'm going to use1 1-10 as 0, and 11-20 as 1.

[1d20] -> = 1

[1d20] -> = 6

[1d20] -> = 17

[1d20] -> = 11

[1d20] -> = 5

[1d20] -> = 10

[1d20] -> = 6

[1d20] -> = 19

And turn into 0's and 1's: 00110001.

Now into base 10: 32+16+1 = 49.

Let's show an example where we need to reroll. Let's say we want to do 1d8, and we roll as follows:

[1d6] -> = 4

[1d6] -> = 6

[1d6] -> = 5

[1d6] -> = 2

We get the binary number 1110, which in base 10, is 16. So we need to reroll.

Why do we need to reroll at all in this method? We roll for every digit in our binary representation of die range, but if we happen to max out (or nearly max out) every digit, making many of them 1's, we may get a bigger number in our range than our target. However, we need to roll for all the digits just in case we would miss out on some other results - we could miss the top few numbers in our range if we don't roll all the digits.


I hope this was interesting, if not useful. Happy rolling!






