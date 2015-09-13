Nimble
======

A Wolfram|Alpha® OS X menu bar app.

## To-do

I'm slowly chipping away at this in my free time. I'm slow and I apologize.

### ASAP
- [x] Error for blank results, with link to WolframAlpha.com search
  - [ ] For more complicated queries, display the result but also a link to the W|A search.
  - [ ] Make search URL clickable (currenly accessible through URL selection, right click, open URL)
- [ ] Support for sub/superscript (e.g.: C_8H_10N_4O_2, x^3)
- [x] Allow text box to be selectable with ⌘A, copiable with ⌘C, etc.
- [ ] Support for looking at different unit conversions for the same result easily
- [ ] Support for multiple responses (`set` is automatically assumed to be a word, and thus returns the `HistoricalPeriod,Language,Word` interpretation, when it can also refer to "a mathematical definition *or* a class of mathematical terms *or* a given name")
- [ ] Support for the weird table formatting
- [ ] Fix About and Preferences windows (Opening once but not opening again after close)

### For later
- [ ] Make it look good
  - [x] Remove the awful blue border
  - [ ] Make proper use of response space (resize window depending on the length of its contents)
- [ ] Quickly calculate simple maths. Recognise brackets, etc. (In the works)
  - *Could be tough, could be libraries for it, who knows*
- [ ] Deal with time zone issues (W|A servers don't get user's local time, for example, they get the server's local time)
- [ ] Add preferences to window
  - [ ] Local Basic Maths
  - [ ] Open on Login ([Docs Reference](https://developer.apple.com/library/mac/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLoginItems.html))

## Queries that return unexpected results
You can help us fix these by comparing your query with our main server, https://nimble-backend.herokuapp.com/input?i=query, and our test server, https://nimble-backend-test.herokuapp.com/input?i=query. [Create an issue](https://github.com/madebybright/Nimble/issues/new) and post the query, along with labeled responses from both servers. This will help us identify the problem.

### Examples
 - [ ] `19 year old male`
   - Presents a fuckton of info on W|A, but mostly images and graphs.
 - [ ] `Gangnam Style lyrics`
   - It doesn't return lyrics for some reason. Copyright, perhaps? W|A's API doesn't even return the lyrics.<sup><a href="#f1" id="#f1">1</a></sup>
 - [ ] Dividing numbers where the answer has a recurring decimal (e.g.: `69 / 420`)
   - Returns the simplified fraction (`23/140`) instead of the number (`0.16428571`)

 <sup><a href="#f1">1</a></sup>Disregarding HTML scraping, there's literally nothing we can do about this.
