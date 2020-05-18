# Writing Like Disco

(These notes are by Kawa, on things to keep in mind as a writer while using the Disco Elysium macros to write in the style of the game! See TwineTips.md for information about things like variables and logic - these are about tone and writing style.)

Please note that while I have been functionally living in this text for many months now, this is not meant to be an absolute Word of God canonical style guide - just observations I've made when trying to write in the style of the game. 

# Spelling/Jargon Notes

The macros use the following spelling for the skills:

INTELLECT
* Conceptualization
* Drama
* Encyclopedia
* Logic
* Rhetoric
* Visual Calculus

PSYCHE
* Authority
* Empathy
* Esprit De Corps
* Inland Empire
* Suggestion
* Volition

FYSIQUE 
* Electrochemistry
* Endurance
* Half Light
* Pain Threshold
* Physical Instrument
* Shivers

MOTORICS
* Composure
* Hand/Eye Coordination
* Interfacing
* Reaction Speed
* Savoir Faire
* Perception
* Perception (Smell)
* Perception (Sight)
* Perception (Taste)
* Perception (Touch)
* Perception (Hearing)

Note particularly the slash in "Hand/Eye Coordination", the space in "Half Light", the spelling of "Esprit de Corps", and the specific senses for "Perception" in parentheses (as well as a version with no sense specified). Touch technically doesn't show up in the game at all, but it's included in the macros for completeness. Of course, for custom games using the framework but not the canonical skills, you can edit these to be whatever you like in the `StoryInit` passage. 

While they're not hard-coded in the macros, these are the difficulties used in the game, with the numbers they're assigned to:

* Trivial : 6-7
* Easy : 8-9
* Medium : 10-11
* Challenging : 12
* Formidable : 13
* Legendary : 14
* Heroic : 15
* Godly : 16
* Impossible : 18-20

The macros will take care of the format for individual passive checks within the game, but as a reference for the text of skill checks (which the writer will have to make manually using ```AddOption```, they look like this:)

```
<<AddOption "[SkillName - Difficulty ##] Text of your option here.">>
```

where 'Difficulty' is one of the words above and ## has the number from the list. 

# About Options

The macros consider the options as if they're being done by YOU, which matches the game's rendering. So ```<<AddOption "Say nothing.">>``` will put "YOU - Say nothing." at the start of the next passage. This means if you want the passage to start with your protagonist saying something out loud, you'll need extra quotes: ```<<AddOption "\"Hello, I've said something.\"">>``` will put "YOU - "Hello, I've said something."" at the start of the next passage.

A mix of action and dialogue uses parentheses: ```<<AddOption "(Reach over to shake their hand.) \"Pleased to meet you!\"">>```

Even someone interrupting you, done by an option, is done with YOU as the speaker. ```<<AddOption "Kim is about to say something. Let him.">>```

Note that if you want the text of your option to be variable, you must use global variables (that start with `$`). More about global versus local variables in TwineTips.md.

# Voicing and Tone

The general concept of the skill dialogues are a Greek chorus/internal monologue, split up into parts. Most of their tone and observations are about "you"; what you (the protagonist) should be doing and percieving. Skill voices rarely use first person; they can when distressed, though. They also can acknowledge each other, but not necessarily by name, and usually do not directly argue with each other. (But can contradict!)

A high INT protagonist loves trivia (Encyclopedia) and feeling "right" about things (Rhetoric, Conceptualization). INT introduces the protagonist to communism.

A high PSY protagonist is empathetic and doesn't listen to their worst impulses (Volition), but also cares a good deal about power - both hard (Authority) and soft (Suggestion). PSY introduces the protagonist to centrism, known as "moralism".

A high FYS protagonist is focused on machismo and fear, but also has a deep empathy for the world as a whole (Shivers) and can sense emotional alongside physical pain (Pain Threshold). FYS introduces the protagonist to fascism.

A high MOT protagonist observes the world and wants to *appear* cool and calm (Savoir Faire, Composure). MOT introduces the protagonist to high capitalism, known as "Ultraliberalism".

You can read more about the skills from a set of blog posts ZA/UM published in development:

* https://zaumstudio.com/2017/02/13/meet-skills-intellect/
* https://zaumstudio.com/2018/03/13/meet-the-skills-psyche/
* https://zaumstudio.com/2018/04/11/meet-the-skills-physique/
* https://zaumstudio.com/2018/05/29/meet-the-skills-motorics/

## Specific Skills Worth Noting

**Esprit de Corps** is special, it's capable of flash-sideways for the reader of what other cops are doing at the time when thematically relevant. The protagonist may or may not actually be aware of what Esprit de Corps knows - the game mentions places and names the protagonist claims to not remember!

**Electrochemistry** is rude. it's a hangover, it's an addiction, it's swinging by the liquor store and deciding to enter, despite an earlier promise to yourself. Electrochemistry also seems to be tied to impulse more generally - allowing yourself to be distracted by stories about cryptids from an old lady is an Electrochemistry check. Electrochemistry likes using metaphors involving Disco, dancing, and partying - particularly equating them to substance use and sexual pleasure. 

**Inland Empire** can carry specific images and fragments of emotional memory. It's melancholic and profound and has lots to say, but expresses it in strange, broken ways. 

**Conceptualization** also has images, and is the seat of metaphor and simile. 

**Shivers** has a rather specific structure for its longer passages. I'll let Alexei take it from here: 

> Shivers is grounded in physical sensation - particularly a cold or chill kind of one, and something that comes from the environment. Damp, or wind, or wet - something physically uncomfortable but not painful, especially something kind of draining, like draining of heat. It's something kind of cutting because it draws your attention to that sensation in the moment, like the chill to your body and the literal shiver cuts through what's going on in your mind at the time. It's a very immediate and physical sensation.
> 
> But - because it's coming from the environment, the contrast is that while it's a very immediate physical sensation, it then draws your attention outwards to where the sensation comes from, which places you in the moment and space of where you are in the world.
> 
> So it's a hyperawareness of exactly where you are in time and space, but also a zooming out - your consciousness draws in due to the sensation, but then kind of leaches out and is carried with the wind or the rain that trigged the feeling. You feel a sense of connection, like you are part of something bigger. Not in quite as human a way as Empathy or Esprit de Corps, or as supernatural as Inland Empire - but it's like you're part of the city, of a moment in time in this complex image of all these little details coming together.
> 
> Once it's zoomed out, Shivers continues to offer a contrast in that on that scale, it lets your mind roam over aspects - usually moving in directions, like to the north and the south - or even "directions" in time, to the past and to the future.You are in this frozen moment and examining it in a somewhat detached but connected way, looking at the whole and then choosing portions to focus in on before zooming back out. And when you do focus in, it picks up on little evocative snapshots, things that are frozen in the moment and are also part of this connected system. Something like a newspaper blowing in the wind - it's part of the wind, the story is part of the city, the paper is for the day which invokes thoughts of time.
> 
> It looks at *people*. It has senses of connection and of a whole, of the little pieces that all come together to make up this city, the feeling that in this very moment and every moment like it there are people and things happening everywhere that are beautiful and evocative and important and that you will never be able to see because they happen everywhere all the time, and all you have to look at is this moment. 
> 
> So you do this contrast, the focusing in on aspects of the big zoomed out picture, the focusing in giving you little pieces that are rooted in connection and in time and place - and then once you have seen what you can see of this moment, you make the decision to allow yourself to return to your body and let the world continue to flow.
> 
> To summarize:
> 1. Start with a harsh physical sensation from the environment that pulls your attention in to this moment then pulls it out to the environment that's causing it
> 2. Zoom out to a wide picture of the surroundings that's grounded in some sense of direction along an axis (time, space, etc)
> 3. Examine evocative tableaus that zoom back in, and especially imagery that brings to mind connection to the city and to this moment in time/space/history/etc 
> 4. wrap it up with a conscious decision to return to your mind and let the world keep flowing again

## YOU and Objects

A useful trick when writing in the Disco Elysium style is to take advantage of setting the speaker to YOU or to objects in the world. 

The writer can use YOU for actions, dialogue, and internal monologue, particularly in response to things the skills say. 

Objects can and also should be a "speaker" when the player interacts with them. Particularly with high Inland Empire (or Interfacing for technological objects), the protagonist may be able to sense things about the object beyond its physical attributes, and the writer can include these by using the object as the speaker.

## Tasks and XP

XP can be gained through tasks and secret tasks. Generally 'secret task' XP, that's not telegraphed with an earlier "New Task", is higher than regular task XP. 

Task names are generally short commands - "Ask Kim to tell you about the case" - or objects to investigate "The victim's tattoos". They can also be questions - "Who made the call reporting the crime?"

XP values are always multiples of 5. 

A level up happens in *Disco Elysium* when the player has gained 100 XP. 

# Credits

To the team at ZA/UM of course, for building such a beautiful and inspiring work, and tending to the art movement.

To Alexei Pepers, for the notes on Shivers, the macros themselves, and all matter of support and joy. Love you, darling; happy birthday. 

To madman_in_a_box on Reddit, for a thorough exploration of the dice rolls and difficulties: https://www.reddit.com/r/DiscoElysium/comments/dir1a5/how_do_dice_rolls_work/ 

To the following folks in both the ZA/UM run Disco(rd) Elysium and the fan-run Disco Elysium Discord server, for thoughtful deep dives into the text and voices:
* pale-eucalypt
* Darelz
* Mayor Maynot
* Luminality
* Eyeball Candy
* xx69VOMIT69xx