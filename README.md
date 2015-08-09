Nimble
======

A Wolfram|Alpha® OS X menu bar app.

## To-do

### ASAP
- [ ] Error for blank results, with link to WolframAlpha.com search
  - [ ] For more complicated queries, display the result but also a link to the W|A search.
- [ ] Support for sub/superscript (e.g.: C_8H_10N_4O_2, x^3)
- [ ] Allow text box to be selectable with ⌘A, copiable with ⌘C, etc.
- [ ] Support for looking at different unit conversions for the same result easily
- [ ] Support for multiple responses (`set` is automatically assumed to be a word, and thus returns the `HistoricalPeriod,Language,Word` interpretation, when it can also refer to "a mathematical definition *or* a class of mathematical terms *or* a given name")
- [ ] Support for the weird table formatting

### For later
- [ ] Make it look good
- [ ] Make the popover resize depending on the length of its contents

## Queries that return unexpected results
(Cross them off when fixed)
 - [ ] `19 year old male`
   - Presents a fuckton of info on W|A, but mostly images and graphs.
 - [ ] `Gangnam Style lyrics`
   - It doesn't return lyrics for some reason. Copyright, perhaps?
 - [ ] Diving numbers where the answer has a recurring decimal (e.g.: `69 / 420`)
   - Returns the simplified fraction (`23/140`) instead of the number (`0.16428571`)
