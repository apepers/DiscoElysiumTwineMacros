# Using Tweego for Version Control and Collaboration
When working with these macros (or working in Twine in general) the workflow is much easier if you use a combination of the Twine visual scripting language and Twee, a text based scripting language.
These instructions cover how to set up a project that uses Twee as well as Tweego, an interpreter that lets you convert between Twee files and Twine's HTML files, so that you can have version control and collaborate with others.

This first section is not specific to using this framework, and just explains how to generally set up a Tweego project using an existing Twine project or a new story.

Based on the work of Em Lazerwalker found here: https://blog.lazerwalker.com/azure,/game/dev/2020/01/16/a-modern-developers-workflow-for-twine.html

## Setting up a Tweego project
### Create your Github Repo for your project. 
If you want to be able to use GitHub Pages to have an automatically built version of your game accessible via a link, you'll need your project to be public. If you just want the source control, you can keep it private, and also skip all GitHub Pages set up.

### Install Your Tools (Tweego and VS Code)
If you're comfortable with command line and path variables, you can just get the Tweego binaries here: https://www.motoslave.net/tweego/

If you'd rather not mess with paths, you can find a wizard installer here: https://github.com/ChapelR/tweego-installer

You can test you have it installed by opening a command prompt and typing `tweego` - if you see a bunch of help text, you've got it.

You will also need a text editor. I recommend Visual Studio Code which is free, lightweight, and has nice syntax highlighting - but use whatever you're comfortable with.

### Create your Twine project, or find the Twine project you're looking to convert into Tweego. 
When starting with a Twine project, either a new one or an existing one, you'll have an HTML file in your Twine folder for the project.

Copy this HTML file into your repo and go ahead and make your first commit.

Now to convert it into a Twee file we'll be using Tweego, which just lets us convert back and forth between Twee files (the text ones) and HTML files (the Twine ones that also are what you can use to play your game). 

To go from an HTML file to a Twee file we open a command prompt in the repo folder and use the command:
`tweego -d MyTwineStory.html -o MyTwineStory.twee`

After this runs you should see a new file in the folder, MyTwineStory.twee

### Editing Twee files
Open up your Twee file in your text editor you picked earlier. If it's something like VS Code, it'll be much more readable with syntax highlighting - VS Code should detect the filetype and suggest you install a twee syntax highlighter, but if it doesn't you can manually search the extensions marketplace for Twee2 tw2 Syntax. Once it's installed your Twee file should highlight nicely.

You should see whatever passages, stylesheet, javascript, etc you had from your Twine project now expressed in Twee syntax. At this point you can make whatever changes you want to the Twee file to work on your story, and would never need to convert back to the Twine visual editor unless you want to (if you do, it's easy to go back and forth)

Try making some changes so you'll be able to test it's working, and then let's make it playable.

### Playing your game 
To play your game with your new changes, your fastest method is to use the command to convert your twee file into an HTML file which is:
`tweego MyTwineStory.twee -o MyTwineStory.html`

That will update the html file in your repo and you can double click it to play it in your browser and see your changes. More likely you'll be making multiple changes and iterating, so it's very useful to run the watch commmand - this will automatically update the HTML file any time you save the Twee file:
`tweego MyTwineStory.twee -o MyTwineStory.html -w`

Leave this command prompt running and simply open the html page on your browser - and any time you save a change to the Twee file, refresh the browser page to see your changes.

The last helpful command is that if you want to start at a different passage, you can specify that in the command line with
`tweego MyTwineStory.twee -o MyTwineStory.html --start="Passage Name to Start At"`

### Managing your project 
Commit your Twee file as often as you want! Due to it being plain text, it will be easy to merge and diff. 

You can also commit your HTML file to make it easier to pull and immediately play the game or open it in the visual editor - but it will not be possible to merge, whenever there you check in a change to the twee you will completely overwrite the HTML file, which is fine.

*The Twee file is the single source of truth* - if you do modify the HTML itself (such as in the Twine virtual editor), ensure you convert that HTML file back into Twee before you commit, so that the Twee file is always the correct version of your story.

Whenever you've made edits to the HTML file you want to merge back into the Twee file, just use the same command you did at the start:
`tweego -d MyTwineStory.html -o MyTwineStory.twee`
