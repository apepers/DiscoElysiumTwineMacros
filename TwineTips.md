# Fun With Twine

(These notes are by Kawa, on things to keep in mind when making games/stories using the Disco Elysium macros. See WritingTips.md for information about the Disco Elysium writing style - these are a bit more "programmatic".)

# Formatting

The Disco Elysium macros are based on Twine Story Format called "SugarCube". It overwrites the default "Link" behavior for AddOption, but otherwise follows SugarCube style settings.

The major things you'll need here are Emphasis, usually rendered as italics, which requires `//two slashes on each side//`; and Strong, usually rendered as bold, which requires `''two single quotes - NOT DOUBLE QUOTES!''`

Also worth noting is that with how `AddParagraph` works, you need to "escape" quotation marks in order for them to show up within your paragraphs. You do so with backslashes: `<<AddParagraph "He looks at you sadly. \"Please be okay.\"">>` Don't forget to include the quotation mark to end your paragraph, even when writing dialogue! Many modern programming-focused text editors will add extra quotation marks for you, but it's worth checking everything "closes out" on your own, too. 

# Variables

There are two kinds of variables, "global" and "local". "Global" variables carry their definitions across passages, and "local" ones do not.

Use the `set` function to create a variable or change its value:

`<<set $feeling to "happy">>`

You can also create true/false and number variables:

```
<<set $xp to 10>>
<<set $feelsGood to true>>
```

# Conditionals

The most common type of conditional is the "if statement":

```
<<SetSpeaker "You">>
<<if $feeling is "happy">>
<<AddParagraph "\"I feel good about this!\"">>
<<elseif $feeling is "sad">>
<<AddParagraph "\"I don't feel so good...\"">>
<<else>>
<<AddParagraph "\"I'm not sure how I'm feeling.\"">>
<<endif>>
```

This will become `YOU - "I feel good about this!"` if `$feeling` was set to "happy", but say different things if it's set to other things. Note the use of `is` to compare strings. The `elseif` segment in the middle is only for if you have more than two options you're checking. And make sure there's no space in there, or between the angle brackets and the if/elseif/else/endif keywords!

A common trick I'll use is setting a global variable much earlier, then checking it to then set a local variable later - usually a description of a place, dependent on where the characters are.

```
<<if $drink is "cocktail">>
<<set _drinkglass to "heavy rocks">>
<<else>>
<<set _drinkglass to "cheap wine">>
<<endif>>

<<PassiveSkill "Perception (Sight)" "Medium" "Success">>
<<AddParagraph "The lieutenant raises the _drinkglass glass to his lips.">>
```

This will say "The lieutenant raises the heavy rocks glass to his lips." if the cocktail was picked, and "The lieutenant raises the cheap wine glass to his lips." if it wasn't.

Note that you cannot use local variables inside `<<AddOption >>` text, due to how the macros handle options across passages - however, you can use one global variable to set another, and that *will* work!

```
<<if $apartment is "Harry">>
<<set $direction to "I'd get to take you home">>
<<else>>
<<set $direction to "you'd take me home">>
<<endif>>
<<AddOption "\"It's a bit of a shame, if I'd known $direction, I would have worn something nicer...\"" SB_Fashion>>
```

(This makes sure Harry gets it right between "I'd get to take you home" versus "you'd take me home".)

Other conditionals work, `<<for>>` and `<<switch>>`, but I personally never used them. 

# More Resources

The general Twine guide: http://twinery.org/wiki/twine2:guide - It's good for info about Twine in general - where your file is saved, publishing, and general navigation. Your Story Format has already been chosen for you - it's SugarCube!

The SugarCube reference document: http://www.motoslave.net/sugarcube/2/docs/ - It's the right reference to use for formatting text (in "Markup" - things like //italics//, ''bold'', and so on) and logic that'll make your game more dynamic (in "Macros", things like if/then statements, and $global and _local variables!)