#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;type in the word between :c1: and :: for the abbreviation to work. For example, to get the word LOGIC, type in the word log and then press space. (The word LOGIC will always be in capitals, but the input won’t be, so you can type log or Log or LOG to get the same word, LOGIC). I recommend only activating this when you require it.

:C1:Log::"Logic"
:C1:Rhe::"Rhetoric"
:C1:Enc::"Encyclopedia"
:C1:Con::"Conceptualization"
:C1:Dra::"Drama"
:C1:Vca::"Visual Calculus"

:C1:Vol::"Volition"
:C1:Ine::"Inland Empire"
:C1:Emp::"Empathy"
:C1:Aut::"Authority"
:C1:Sug::"Suggestion"
:C1:Edc::"Esprit De Corps"

:C1:Phi::"Physical Instrument"
:C1:Ec::"Electrochemistry"
:C1:End::"Endurance"
:C1:Hal::"Half Light"
:C1:Pth::"Pain Threshold"
:C1:Shi::"Shivers"

:C1:Hec::"Hand/Eye Coordination"
:C1:Res::"Reaction Speed"
:C1:Per::"Perception (
:C1:Saf::"Savoir Faire"
:C1:Com::"Composure"
:C1:Int::"Interfacing"

:C1:Tf::"Trivial" "Failure">>
:C1:Ts::"Trivial" "Success">>
:C1:Tn::- Trivial 6\]

:C1:Ef::"Easy" "Failure">>
:C1:Es::"Easy" "Success">>
:C1:En::- Easy 8\]

:C1:Mf::"Medium" "Failure">>
:C1:Ms::"Medium" "Success">>
:C1:Mn::- Medium 10\]

:C1:Cf::"Challenging" "Failure">>
:C1:Cs::"Challenging" "Success">>
:C1:Cn::- Challenging 12\]

:C1:Ff::"Formidable" "Failure">>
:C1:Fs::"Formidable" "Success">>
:C1:Fn::- Formidable 13\]

:C1:Lf::"Legendary" "Failure">>
:C1:Ls::"Legendary" "Success">>
:C1:Ln::- Legendary 14\]

:C1:Hf::"Heroic" "Failure">>
:C1:Hs::"Heroic" "Success">>
:C1:Hn::- Heroic 15\]

:C1:Gf::"Godly" "Failure">>
:C1:Gs::"Godly" "Success">>
:C1:Gn::- Godly 16\]

:C1:Imf::"Impossible" "Failure">>
:C1:Ims::"Impossible" "Success">>
:C1:Imn::- Impossible 20\]

:c1:PSS::<<PassiveSkill 
:c1:SSP::<<SetSpeaker 
:c1:BSP::<<BlankSpeaker>>
:c1:+O::<<AddOption
:c1:+P::<<AddParagraph 

:c1:SKS::<<SkillSuccess>>
:c1:SKF::<<SkillFailure>>