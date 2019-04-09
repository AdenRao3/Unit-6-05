-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: April 9, 2019
--
-- This program tells a person to either go to work, to school or relax for the weekend depending on their age and the day. 
--
-----------------------------------------------------------------------------------------

-- Background colour
----------
display.setDefault( "background", 0/255, 200/255, 200/255 )
----------

-- Calculate button, school image and a work image
-----------------------------
local calculateButton = display.newImageRect( "./assets/calculate.png", 100, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = 210
calculateButton.id = "calculateButton"

local school = display.newImageRect( "./assets/school.png", 140, 140 )
school.x = 80
school.y = 50
school.id = "school"

local work = display.newImageRect( "./assets/work.png", 140, 140 )
work.x = 240
work.y = 50
work.id = "work"
-----------------------------

-- Titles for the text fields.
-------------------
local title1 = display.newText( "Type your age here: ", 160, 290, native.systemFont, 25 )
title1:setFillColor( 0 )

local title2 = display.newText( "Type the day here: ", 160, 410, native.systemFont, 25 )
title2:setFillColor( 0 )
-------------------

-- Text feild for the age and the day.
----------------------
local myAgeTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 110, 300, 60 )
myAgeTextfield.id = " myAgeTextField"

local theDayTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 230, 300, 60 )
theDayTextfield.id = "the day TextField"
----------------------

-- Calendar text
local screenText = display.newText( "Calendar", 160, 145, native.systemFont, 25 )
screenText:setFillColor( 0 )

-- Calculate button function
local function calculateButtonTouch ( event )
	myAge = tonumber( myAgeTextfield.text )
	theDay = ( theDayTextfield.text )
-- If statement to determine if they go to school, go to work or relax for the weekend based on the day and their age.
	if (myAge > 0) and ( theDay == "saturday" or theDay == "sunday" ) then
		screenText.text = "Time to relax for the weekend!"
	elseif ( myAge >= 18 ) and ( theDay ~= "saturday" or theDay ~= "sunday") then
		screenText.text = "Time to go to work!"
	elseif ( myAge < 18 ) and ( theDay ~= "saturday" or theDay ~= "sunday") then
		screenText.text = "Time for school!"
	end
end

calculateButton:addEventListener( "touch", calculateButtonTouch )