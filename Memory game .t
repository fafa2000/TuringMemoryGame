%Programmed by Fatemeh MousaviKarimi
%Last edited: 6/16/2016
%Description: memory game
%======================================================================================================================================================================

import GUI
setscreen ("graphics:1000;640")


var response : string
var font1 : int := Font.New ("Broadway:70:bold")
var font2 : int := Font.New ("Ariel:20:bold")
var font : int := Font.New ("Times:60:bold,italic")
const again := "Do you wish to play again?(yes/no)"
var picflower1 : int := Pic.FileNew ("gol1.jpg")
var picflower2 : int := Pic.FileNew ("gol2.jpg")
var picflower3 : int := Pic.FileNew ("gol3.jpg")
var picflower4 : int := Pic.FileNew ("gol4.jpg")
var picflower5 : int := Pic.FileNew ("gol5.jpg")
var picflower6 : int := Pic.FileNew ("gol6.jpg")
var picflower7 : int := Pic.FileNew ("gol7.jpg")
var picflower8 : int := Pic.FileNew ("gol8.jpg")
var picflower9 : int := Pic.FileNew ("gol9.jpg")
var picflower10 : int := Pic.FileNew ("gol10.jpg")
var picflower11 : int := Pic.FileNew ("gol11.jpg")
var picflower12 : int := Pic.FileNew ("gol12.jpg")
var picflower13 : int := Pic.FileNew ("gol13.jpg")
var picflower14 : int := Pic.FileNew ("gol14.jpg")
var picflower15 : int := Pic.FileNew ("gol15.jpg")
var picrand1 : int := Pic.FileNew ("rand1.jpg")
var picrand2 : int := Pic.FileNew ("rand2.jpg")
var picrand3 : int := Pic.FileNew ("rand3.jpg")
var picrand4 : int := Pic.FileNew ("rand4.jpg")
var picrand5 : int := Pic.FileNew ("rand5.jpg")
var picrand6 : int := Pic.FileNew ("rand6.jpg")
var picrand7 : int := Pic.FileNew ("rand7.jpg")
var picrand8 : int := Pic.FileNew ("rand8.jpg")
var picrand9 : int := Pic.FileNew ("rand9.jpg")
var picrand10 : int := Pic.FileNew ("rand10.jpeg")
var picrand11 : int := Pic.FileNew ("rand11.jpg")
var picrand12 : int := Pic.FileNew ("rand12.jpg")
var picrand13 : int := Pic.FileNew ("rand13.jpg")



%Background Music
var finished : boolean := false
process PlayMusic
    loop
	Music.PlayFile ("music.wav")
	exit when finished
    end loop
end PlayMusic


procedure Game
    cls
    drawfill (0, 0, yellow, yellow)
    Font.Draw ("Welcome to Memory Master!", 300, 600, font2, purple)
    delay (500)
    Font.Draw ("Pay close attention to the series of images;)", 200, 500, font2, black)
    delay (500)

    loop %so that game is able to restart
	var score : int := 0 % so that score tracker restarts
	Font.Draw ("Choose a category:", 350, 400, font2, brightblue)
	Font.Draw ("a)Flower images   b)Mixture (graphics and images)", 250, 300, font2, blue)
	locate (30, 45)
	get response
	cls
	fork PlayMusic

	case response of
	    label "a", "A" : %game with only flower images

		Font.Draw ("Round 1", 300, maxy div 2, font, red)
		delay (1000)
		cls
		Pic.Draw (picflower1, 200, 100, 0)
		delay (1000)
		cls
		Pic.Draw (picflower2, 200, 10, 0)
		delay (1000)
		cls
		Pic.Draw (picflower3, 200, 100, 0)
		delay (1000)
		cls
		Pic.Draw (picflower4, 0, 0, 0)
		delay (1000)
		cls
		Pic.Draw (picflower5, 200, 0, 0)
		delay (1000)
		cls
		Font.Draw ("Here We Go...", 100, maxy div 2, font, red)
		delay (1000)
		cls
		loop %ask until valid answer given
		    Pic.Draw (picflower3, 200, 100, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "yes" or response = "Yes" or response = "YES" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "no" or response = "No" or response = "NO" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop %ask until valid answer given
		    Pic.Draw (picflower5, 200, 0, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "yes" or response = "Yes" or response = "YES" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "no" or response = "No" or response = "NO" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop  %ask until valid answer given
		    Pic.Draw (picflower12, 150, 100, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "NO" or response = "NO" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls


		Font.Draw ("Round 2", 300, maxy div 2, font, red)
		delay (1000)
		cls
		Pic.Draw (picflower5, 200, 0, 0)
		delay (1000)
		cls
		Pic.Draw (picflower6, 150, 100, 0)
		delay (1000)
		cls
		Pic.Draw (picflower9, 0, 0, 0)
		delay (1000)
		cls
		Pic.Draw (picflower7, 150, 100, 0)
		delay (1000)
		cls
		Pic.Draw (picflower8, 150, 100, 0)
		delay (1000)
		cls
		Font.Draw ("Here We Go...", 100, maxy div 2, font, red)
		delay (1000)
		cls
		loop   %ask until valid answer given
		    Pic.Draw (picflower10, 150, 100, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "No" or response = "NO" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop  %ask until valid answer given
		    Pic.Draw (picflower7, 150, 100, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "yes" or response = "Yes" or response = "YES" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "no" or response = "No" or response = "NO" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop  %ask until valid answer given
		    Pic.Draw (picflower15, 150, 100, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "NO" or response = "No" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls


		Font.Draw ("Round 3", 300, maxy div 2, font, red)
		delay (1000)
		cls
		Pic.Draw (picflower15, 150, 100, 0)
		delay (1000)
		cls
		Pic.Draw (picflower3, 200, 100, 0)
		delay (1000)
		cls
		Pic.Draw (picflower14, 150, 100, 0)
		delay (1000)
		cls
		Pic.Draw (picflower13, 150, 100, 0)
		delay (1000)
		cls
		Pic.Draw (picflower12, 150, 100, 0)
		delay (1000)
		cls
		Font.Draw ("Here We Go...", 100, maxy div 2, font, red)
		delay (1000)
		cls
		loop  %ask until valid answer given
		    Pic.Draw (picflower2, 200, 10, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "No" or response = "NO" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "YES" or response = "Yes" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop  %ask until valid answer given
		    Pic.Draw (picflower11, 160, 90, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "NO" or response = "No" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop  %ask until valid answer given
		    Pic.Draw (picflower3, 200, 100, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "yes" or response = "Yes" or response = "YES" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "no" or response = "No" or response = "NO" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls

		put "You scored ", score, "/9"
		delay (300)
		put again     %asks replay question
		get response
		exit when response = "no" or response = "No" or response = "NO"
		cls



	    label "b", "B" :     %game with graphics & images

		Font.Draw ("Round 1", 300, maxy div 2, font, red)
		delay (1000)
		cls
		% BLINKING BLACK EYE
		for i : 1 .. 3
		    drawfillbox (100, 550, 900, 600, 137)     %eyebrow
		    drawarc (500, 300, 300, 200, 0, 180, black)
		    drawfilloval (500, 300, 100, 200, black)     %iris
		    delay (500)
		    cls
		    drawfillbox (100, 550, 900, 600, 137)     %eyebrow
		    drawarc (500, 300, 300, 200, 180, 0, black)     %closed eye
		    delay (500)
		    cls
		end for
		Pic.Draw (picrand1, 300, 100, 0)
		delay (1000)
		cls
		Pic.Draw (picrand4, 150, 100, 0)
		delay (1000)
		cls
		%STAR WITH SRIPED BACKGROUND
		var x1, y1 : int := 0
		var x2 : int := maxx
		var y2 : int := 50
		drawfillbox (x1, y1, x2, y2, blue)
		for i : 1 .. 7     %stripes
		    drawfillbox (x1, y1 + 100, x2, y2 + 100, blue)
		    y1 := y1 + 100
		    y2 := y2 + 100
		end for
		drawfillstar (200, 100, 800, 600, yellow)
		delay (1000)
		cls
		Pic.Draw (picrand10, 200, 50, 0)
		delay (1000)
		cls
		Font.Draw ("Here We Go...", 100, maxy div 2, font, red)
		delay (1000)
		cls
		loop  %ask until valid answer given
		    Pic.Draw (picrand13, 120, 10, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "NO" or response = "No" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		% BLINKING BLUE EYE
		for i : 1 .. 3
		    drawfillbox (100, 550, 900, 600, 137)     %eyebrow
		    drawarc (500, 300, 300, 200, 0, 180, black)
		    drawfilloval (500, 300, 100, 200, 33)     %iris
		    delay (150)
		    cls
		    drawfillbox (100, 550, 900, 600, 137)     %eyebrow
		    drawarc (500, 300, 300, 200, 180, 0, black)     %closed eye
		    delay (150)
		    cls
		end for
		drawfillbox (100, 550, 900, 600, 137)     %eyebrow
		drawarc (500, 300, 300, 200, 0, 180, black)
		drawfilloval (500, 300, 100, 200, 33)     %iris
		loop %ask until valid answer given

		    drawfillbox (100, 550, 900, 600, 137)  %eyebrow
		    drawarc (500, 300, 300, 200, 0, 180, black)
		    drawfilloval (500, 300, 100, 200, 33) %iris
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "NO" or response = "No" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop   %ask until valid answer given
		    Pic.Draw (picrand8, 150, 50, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "NO" or response = "No" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls


		Font.Draw ("Round 2", 300, maxy div 2, font, red)
		delay (1000)
		cls
		%MAPLE IN MIDDLE WITH PATTERN ON TOP & BOTTOM
		var maplex1 : int := 10
		var maplex2 : int := 40
		drawfillmapleleaf (10, 10, 40, 40, red)
		drawfillmapleleaf (10, 600, 40, 630, red)
		for i : 1 .. 100     %draws maple leaf pattern on top and bottom
		    drawfillmapleleaf (maplex1 + 30, 10, maplex2 + 30, 40, red)
		    drawfillmapleleaf (maplex1 + 30, 600, maplex2 + 30, 630, red)
		    maplex1 := maplex1 + 30
		    maplex2 := maplex2 + 30
		end for
		drawfillmapleleaf (300, 100, 700, 500, red)
		delay (1000)
		cls
		Pic.Draw (picrand5, 290, 70, 0)
		delay (1000)
		cls
		Pic.Draw (picrand6, 250, 150, 0)
		delay (1000)
		cls
		Pic.Draw (picrand3, 230, 100, 0)
		delay (1000)
		cls
		Pic.Draw (picrand2, 150, 70, 0)
		delay (1000)
		cls
		Font.Draw ("Here We Go...", 100, maxy div 2, font, red)
		delay (1000)
		cls
		loop   %ask until valid answer given
		    Pic.Draw (picrand12, 250, 25, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "NO" or response = "No" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop  %ask until valid answer given

		    % MAPLE IN MIDDLE WITH NO PATTERN
		    drawfillmapleleaf (300, 100, 700, 500, red)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "NO" or response = "No" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop   %ask until valid answer given
		    Pic.Draw (picrand6, 250, 150, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "yes" or response = "Yes" or response = "YES" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "no" or response = "No" or response = "NO" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls


		Font.Draw ("Round 3", 300, maxy div 2, font, red)
		delay (1000)
		cls
		Pic.Draw (picrand7, 25, 50, 0)
		delay (1000)
		cls
		% PERSON IN QUICKSAND
		var dotx, doty : int     %for sand grain graphics
		drawfill (300, 300, 52, 52)     %Blue background
		drawfillbox (0, 0, maxx, 200, green)     %ground
		drawfilloval (400, 100, 250, 60, 90)     %sand
		for i : 1 .. 50     %sand grains
		    randint (dotx, 200, 600)
		    randint (doty, 50, 150)
		    drawfilloval (dotx, doty, 1, 1, 66)
		end for
		%Ripples
		drawarc (400, 100, 50, 10, 180, 360, 66)
		drawarc (400, 100, 79, 20, 0, 180, 66)
		drawarc (400, 100, 90, 30, 270, 360, 66)
		drawarc (400, 100, 95, 35, 180, 260, 66)
		%person
		drawfilloval (400, 200, 20, 28, white)     %head
		drawfilloval (390, 210, 2, 5, black)     %left eye
		drawfilloval (410, 210, 2, 5, black)     %right eye
		drawfilloval (400, 190, 10, 14, black)
		drawline (400, 100, 400, 170, black)     %70 units long
		drawline (400, 150, 370, 150, black)     %left
		drawline (370, 150, 360, 180, black)     %left
		drawline (400, 150, 430, 170, black)     %right
		drawline (430, 170, 440, 200, black)     %right
		delay (1000)
		cls
		Pic.Draw (picrand9, -30, -60, 0)
		delay (1000)
		cls
		Pic.Draw (picrand11, 0, 0, 0)
		delay (1000)
		cls
		%HOUSE
		drawfill (0, 0, 11, 11)
		drawfillbox (300, 0, 700, 400, yellow)
		drawline (300, 400, 500, 600, red)
		drawline (500, 600, 700, 400, red)
		drawline (300, 400, 700, 400, red)
		drawfill (501, 401, red, red)     %roof color
		delay (1000)
		cls
		Font.Draw ("Here We Go...", 100, maxy div 2, font, red)
		delay (1000)
		cls
		loop  %ask until valid answer given

		    %PERSON WITH HAT
		    drawfill (0, maxy, 101, 101)
		    drawline (0, 40, maxx, 40, green)
		    drawfill (1, 1, green, green)
		    drawfillbox (350, 200, 500, 400, 34) %the body
		    drawfillbox (350, 20, 380, 200, blue) %left leg
		    drawfillbox (500, 20, 470, 200, blue) %right leg
		    drawfilloval (425, 450, 50, 50, 31) %face
		    drawfillbox (350, 400, 250, 350, 34) %left arm h, 50wide, 100long
		    drawfillbox (250, 400, 300, 500, 34) %left arm v, 50wide, 100long
		    drawfillbox (500, 400, 600, 350, 34) %right arm h, 50wide, 100long
		    drawfillbox (550, 250, 600, 350, 34) %right arm v, 50wide, 100long
		    drawfillarc (425, 460, 70, 40, 0, 180, 184) %hair
		    drawarc (425, 440, 30, 30, 180, 0, 1)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "NO" or response = "No" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop  %ask until valid answer given
		    Pic.Draw (picrand10, 200, 50, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "no" or response = "NO" or response = "No" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "yes" or response = "Yes" or response = "YES" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls
		loop  %ask until valid answer given
		    Pic.Draw (picrand7, 25, 50, 0)
		    put "Was this one of the pictures?(yes/no)"
		    get response
		    cls
		    if response = "yes" or response = "Yes" or response = "YES" then     %checks answer and keeps track of score
			Font.Draw ("Good Job;)", 100, maxy div 2, font, green)
			score := score + 1
		    elsif response = "no" or response = "No" or response = "NO" then
			Font.Draw ("AWW:(", 100, maxy div 2, font, brightred)
		    else
			put "invalid answer :/"
		    end if
		    exit when response = "yes" or response = "Yes" or response = "YES" or response = "no" or response = "No" or response = "NO"
		end loop
		delay (1000)
		cls

		put "You scored ", score, "/9"
		delay (300)
		put again     %asks replay question
		get response
		exit when response = "no" or response = "No" or response = "NO"
		cls
	end case
    end loop
    %Stops music
    finished := true
    Music.PlayFileStop
end Game

%---------------------------------------------------------------------------START UP SCREEN-----------------------------------------------

var StartButton : int := GUI.CreateButton (180, 200, 700, "Start", Game)
GUI.SetColor (StartButton, brightpurple)

drawfill (0, 0, black, black)
Font.Draw ("Memory Master", 120, maxy div 2, font1, white)

loop
    exit when GUI.ProcessEvent     %so that button works properly
end loop




