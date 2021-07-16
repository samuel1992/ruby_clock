# The problem
Implement a clock that handles times without dates.

You should be able to add to, and subtract hours and minutes from it.

Two clocks that represent the same time should be equal to each other.


# How have I approach the problem
Firstly I created a simple clock passing the exacly hour and minute just to see the first test passing XD

Then I start to think about the next tests and how it was using the clock so I figure out that I need to implement an algorithm to extract the hour and minute
generically based on the amount of hours of the day:
- First thing was to convert everything to the same scale, so I converted all to minutes.
- The second problem was understand how could I extract hours from an amount of minutes
  - the clock works showing 24 configurations on the hour field (00, 01, 02 etc) so I wanted to extract the number of hours I have in that amount of minutes and then
    collect the exactly hour that belongs to this group of 24 formats.
- For the last I need to collect the minutes. The logic is almost the same, the difference is that we have 60 configurations for minutes and our base to calculate
  is already converted to minutes so I only need to extract the minutes from there.

The operation I used to extract the hour and the minute was the remainder of the division because its the way I knew when you have cliclic operations like the hour that
 rolls over a day or so.
