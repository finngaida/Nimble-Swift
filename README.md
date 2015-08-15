Nimble
======

A Wolfram|Alpha® OS X menu bar app.

## To-do

### ASAP
- [x] Error for blank results, with link to WolframAlpha.com search
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
You can help us fix these by comparing your query with our main server, `https://nimble-backend.herokuapp.com/input?i=query`, and our test server, `https://nimble-backend-test.herokuapp.com/input?i=query`. [Create an issue](https://github.com/madebybright/Nimble/issues/new) and post the query, along with labeled responses from both servers. This will help us identify the problem.

### Examples
 - [ ] `19 year old male`
   - Presents a fuckton of info on W|A, but mostly images and graphs.
 - [ ] `Gangnam Style lyrics`
   - It doesn't return lyrics for some reason. Copyright, perhaps?
 - [ ] Dividing numbers where the answer has a recurring decimal (e.g.: `69 / 420`)
   - Returns the simplified fraction (`23/140`) instead of the number (`0.16428571`)
