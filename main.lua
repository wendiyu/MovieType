-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Wendi Yu
-- Created on: Mar 2018
-- 
-- age of movie type
-----------------------------------------------------------------------------------------

local answer = display.newText( "", 1000, 1150, native.systemFont, 100 )

local instruction = display.newText(" What kind of movie you can watch?  ", display.contentCenterX - 100, display.contentCenterY - 500, native.systemFont, 100)

local instruction2 = display.newText(" Enter your age: ", display.contentCenterX - 400, display.contentCenterY - 100, native.systemFont, 100)
local instruction2TextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY + 100, 650, 120)
instruction2TextField.id = "age"

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 600
enterButton.y = display.contentCenterY + 100
enterButton.id = "enter button"

local function MovieAge( event )
	-- body
	local age = tonumber(instruction2TextField.text)

	if (age > 17) then
		 answer.text = ("You can watch R rated movie alone.")
	elseif (age > 13) then 
		answer.text = ("You can watch PG 13 movie alone.")
	else
		answer.text = ("You can watch G rated movie")
	end
end

enterButton:addEventListener("touch", MovieAge)