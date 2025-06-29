/* ----- ink-soaked settings ----- */
/* Here I've created a bunch of JavaScript variables
so that you can easily customize your story!
These are not for the look, but for the _feel_ of your story. */

// Variable that controls whether the page is erased after a choice or not
var ActLikeTwine = true;

/* ----- Modal Setting ----- */
// If you don't want the modal, turn this to false
var HaveModal = false;
var scrollToBottomTrue = false;

/* ----- Text Timing Variables ----- */
// Choose whether to have a delay between each line of body text 
var delayText = false;
// Delay between each line of body text rendering
var textDelay = 500.0;

// Choose whether to render choices immediately after the body text or have a delay
var waittoRenderChoices = false;
// Delay between body text and choice text rendering
var bodytoChoicesDelay = 500.0;

// Choose whether to render all choices at once or with a delay between them
var delayBetweenChoices = false;
// Delay between delay between lines of choice
var choiceDelay = 500.0;

/* ----- Functions ----- */
function toggleFlow(){
    ActLikeTwine = !ActLikeTwine;
    console.log("ActLikeTwine = " + ActLikeTwine);
}