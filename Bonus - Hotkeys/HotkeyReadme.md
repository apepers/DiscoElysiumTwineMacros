# Disco Elysium Macro Hotkeys!

The contents of this folder is a "script file" for the program AutoHotkey:

https://www.autohotkey.com/

which is a Windows-based program to let you script behavior. This particular set of scripts is designed to make writing in the Twine Disco Elysium framework easier!

# How to use

* Download and install the "Current Version" of AutoHotkey at the site above
* Download the script file in this folder
* Navigate to where you saved the script file
* Right-click and select "Run Script" from the context menu
* When you're done using the script, find the AutoHotkey icon in your system tray - a green H - and select "Suspend Hotkeys"

# How it works

Every skill has a two or three letter code, as do the difficulties and many of the major macro features. 

If your script is on, typing what is between `:c1:` and `::` then a space or the Enter key will automatically expand to what's to the right of the double colons. The hot keys don't care about capitalization, too.

So for example, typing `pss aut ms[enter]+p ` will give 
```
<<PassiveSkill "Authority" "Medium" "Success">> 
<<AddParagraph 
```

which is obviously a lot faster than writing all that out! At this point, you'll have to be the one to type in the quotation marks for starting/ending the paragraph and the double brackets for closing the macro. It takes a bit to learn the codes for all the skills - I recommend having the script file itself open in a text editor to refer to as you get started. The time savings over the course of making a long fangame are not to be underestimated, though!

A useful trick is that every difficulty starts with a different letter - `t` for Trivial, `e` for Easy, et cetera. The difficulty hotkeys are `xs` for the "success" and `xf` for the "failure", where `x` is that first letter - or `ims`/`imf` for the Impossible ones, so that you wouldn't trigger the hotkey every time you type the word "is"!

# Extra Bonus - xn for skill difficulties in options

One of the hotkey features I've included is formatting for skill checks to be used with `AddOption`. So `+o emp ` gives this: `<<AddOption "Empathy" `

If you then move your cursor to inside the quotation mark for Empathy and then type ` mn ` you'll get `<<AddOption "Empathy - Medium 10\]`

Youll have to add the extra square bracket at the start (I escape mine with a backslash to be safe, but it may not be necessary? Worth further testing) but still, a *lot* faster than typing it all out, and no fear of forgetting what number goes with which difficulty! And yes, these follow the exact same way for the other difficulties - `tn` for Trivial 6, all the way up to `imn`for Impossible 20.

# Credits

Thank you to Alphawave for the initial "Disco Scripts.ahk", which were designed for non-Twine use - and check out her game using the framework, "Requiem for the Apostle"! https://alphawave.itch.io/requiem-for-the-apostle