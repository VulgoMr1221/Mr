createBlip ( 1726.982, -1636.189, 20.217, 44 )  --BLİP
createBlip ( 2019.499, 1007.71, 10.82, 44 )  --BLİP
createBlip ( -1957.53, 1344.244, 7.188, 44 )  --BLİP

local screenW, screenH = guiGetScreenSize() 
local game = 1 if screenW < 1920 then game = math.min(2, 1920 / screenW) end

local bGold = dxCreateTexture( "files/gold.png", "argb", true, "clamp" )
local startGame = false 

local stateClick   = false    local stateClick1  = false    local stateClick2  = false
local stateClick3  = false    local stateClick4  = false    local stateClick5  = false
local stateClick6  = false    local stateClick7  = false    local stateClick8  = false
local stateClick9  = false    local stateClick10 = false    local stateClick11 = false
local stateClick12 = false    local stateClick13 = false    local stateClick14 = false
local stateClick15 = false    local stateClick16 = false    local stateClick17 = false
local stateClick18 = false    local stateClick19 = false    local stateClick20 = false
local stateClick21 = false    local stateClick22 = false    local stateClick23 = false
local stateClick24 = false    local stateClick25 = false    local stateClick26 = false

local stopClick1 = false
local stopClick2 = false
   
local finishWnd = false 

local mainRender = false
local armorRender = false
local faqRender = false
local failRender = false 

local countbomb3 = true 

local startRandom, FinishRandom = 1, 5

-- MAYIN TARLASI MARKERLERİ
local markBomb1 = createMarker(1726.982, -1636.189, 20.217 -1, "cylinder", 1, 255, 0, 0, 100)
local markBomb2 = createMarker(2019.499, 1007.71, 10.82 -1, "cylinder", 1, 255, 0, 0, 100)
local markBomb3 = createMarker(-1957.53, 1344.244, 7.188 -1, "cylinder", 1, 255, 0, 0, 100)

local editAmount = guiCreateEdit( (screenW-950/game)/2, (screenH-280/game)/2, 245/game, 35/game, "", false)
guiSetVisible(editAmount, false)

function startEventMrk ( hitPlayer, matchingDimension )
	if isPedInVehicle(localPlayer) then return end
	if ( hitPlayer == localPlayer ) then
		guiSetVisible(editAmount, true)
		mainRender = true 
		showCursor(true)
		local stateElement1 = "none"
		local stateElement2 = "none"
		local stateElement3 = "none"
		local stateElement4 = "none"
		local stateElement5 = "none"
		local stateElement6 = "none"
		local stateElement7 = "none"
		local stateElement8 = "none"
		local stateElement9 = "none"
		local stateElement10 = "none"

		stopClick1 = false    
		stopClick2 = false 
		stopClick3 = false 
		stopClick4 = false 
		stopClick5 = false 
		stopClick6 = false
		stopClick7 = false 
		stopClick8 = false 
		stopClick9 = false 
		stopClick10 = false 
	end
end
addEventHandler("onClientMarkerHit", markBomb1, startEventMrk)
addEventHandler("onClientMarkerHit", markBomb2, startEventMrk)
addEventHandler("onClientMarkerHit", markBomb3, startEventMrk)

function removeEventMrk ( hitPlayer, matchingDimension )
	if isPedInVehicle(localPlayer) then return end
	if ( hitPlayer == localPlayer ) then
		guiSetVisible(editAmount, false)
		mainRender = false 
		showCursor(false)
	end
end
addEventHandler("onClientMarkerLeave", markBomb1, removeEventMrk)
addEventHandler("onClientMarkerLeave", markBomb2, removeEventMrk)
addEventHandler("onClientMarkerLeave", markBomb3, removeEventMrk)

local stateElement1 = "none"
local stateElement2 = "none"
local stateElement3 = "none"
local stateElement4 = "none"
local stateElement5 = "none"
local stateElement6 = "none"
local stateElement7 = "none"
local stateElement8 = "none"
local stateElement9 = "none"
local stateElement10 = "none"
local stateElement11 = "none"
local stateElement12 = "none"
local stateElement13 = "none"
local stateElement14 = "none"
local stateElement15 = "none"
local stateElement16 = "none"
local stateElement17 = "none"
local stateElement18 = "none"
local stateElement19 = "none"
local stateElement20 = "none"
local stateElement21 = "none"
local stateElement22 = "none"
local stateElement23 = "none"
local stateElement24 = "none"
local stateElement25 = "none"

stopClick1 = false    
stopClick2 = false 
stopClick3 = false 
stopClick4 = false 
stopClick5 = false 
stopClick6 = false
stopClick7 = false 
stopClick8 = false 
stopClick9 = false 
stopClick10 = false 
stopClick11 = false 
stopClick12 = false 
stopClick13 = false 
stopClick14 = false 
stopClick15 = false 
stopClick16 = false 
stopClick17 = false 
stopClick18 = false 
stopClick19 = false 
stopClick20 = false 
stopClick21 = false 
stopClick22 = false
stopClick23 = false 
stopClick24 = false 
stopClick25 = false 

addEventHandler("onClientRender", root, 
	function () 
        if mainRender == true then
			dxDrawImage((screenW-1010/game)/2, (screenH-605/game)/2, 1006/game, 605/game, "files/base.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
        	x, y, bx, by = 1000, 600, 1005, 605
            --
		    textBombCounse = "3"
		    textRubinCounse = "22"
            if countbomb3 == true then 
		        dxDrawRectangle((screenW-950/game)/2, (screenH-65/game)/2, 50/game, 50/game, tocolor(255, 0, 0, 200), false)
		        textBombCounse = "3"
		        textRubinCounse = "22"
		    elseif countbomb5 == true then 
		        dxDrawRectangle((screenW-820/game)/2, (screenH-65/game)/2, 50/game, 50/game, tocolor(255, 0, 0, 200), false)
		        textBombCounse = "5"
		        textRubinCounse = "20"
		    elseif countbomb10 == true then 
		        dxDrawRectangle((screenW-690/game)/2, (screenH-65/game)/2, 50/game, 50/game, tocolor(255, 0, 0, 200), false)
		        textBombCounse = "10"
		        textRubinCounse = "15"
		    elseif countbomb18 == true then 
		        dxDrawRectangle((screenW-560/game)/2, (screenH-65/game)/2, 50/game, 50/game, tocolor(255, 0, 0, 200), false)
		        textBombCounse = "18"
		        textRubinCounse = "7"
		    end 
            --
            dxDrawText(textRubinCounse, (screenW-800/game)/2, (screenH+120/game)/2, 50/game, (screenH+120/game)/2+45/game, tocolor(255, 255, 255, 200), 1, "default-bold", "left", "center")
            dxDrawText(textBombCounse, (screenW-800/game)/2, (screenH+250/game)/2, 50/game, (screenH+250/game)/2+45/game, tocolor(255, 255, 255, 200), 1, "default-bold", "left", "center")
		    --
		    dxDrawRectangle((screenW-950/game)/2, (screenH-65/game)/2, 50/game, 50/game, tocolor(255, 255, 255, 15), false)
		    dxDrawRectangle((screenW-820/game)/2, (screenH-65/game)/2, 50/game, 50/game, tocolor(255, 255, 255, 15), false)
		    dxDrawRectangle((screenW-690/game)/2, (screenH-65/game)/2, 50/game, 50/game, tocolor(255, 255, 255, 15), false)
		    dxDrawRectangle((screenW-560/game)/2, (screenH-65/game)/2, 50/game, 50/game, tocolor(255, 255, 255, 15), false)
		    dxDrawText("3", (screenW-950/game)/2, (screenH-65/game)/2, (screenW-950/game)/2+50/game, (screenH-65/game)/2+50/game, tocolor(255, 255, 255, 200), 1, "default-bold", "center", "center")
		    dxDrawText("5", (screenW-820/game)/2, (screenH-65/game)/2, (screenW-820/game)/2+50/game, (screenH-65/game)/2+50/game, tocolor(255, 255, 255, 200), 1, "default-bold", "center", "center")
		    dxDrawText("10", (screenW-690/game)/2, (screenH-65/game)/2, (screenW-690/game)/2+50/game, (screenH-65/game)/2+50/game, tocolor(255, 255, 255, 200), 1, "default-bold", "center", "center")
		    dxDrawText("18", (screenW-560/game)/2, (screenH-65/game)/2, (screenW-560/game)/2+50/game, (screenH-65/game)/2+50/game, tocolor(255, 255, 255, 200), 1, "default-bold", "center", "center")
		    --. 1 строка 
            if stateElement1 == "bomba" then dxDrawImage((screenW+800/game)/2, (screenH-370/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement1 == "rubin" then dxDrawImage((screenW+800/game)/2, (screenH-370/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement1 == "none" then dxDrawRectangle((screenW+800/game)/2, (screenH-370/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement2 == "bomba" then dxDrawImage((screenW+650/game)/2, (screenH-370/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement2 == "rubin" then dxDrawImage((screenW+650/game)/2, (screenH-370/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement2 == "none" then	dxDrawRectangle((screenW+650/game)/2, (screenH-370/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement3 == "bomba" then dxDrawImage((screenW+500/game)/2, (screenH-370/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement3 == "rubin" then dxDrawImage((screenW+500/game)/2, (screenH-370/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement3 == "none" then	dxDrawRectangle((screenW+500/game)/2, (screenH-370/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement4 == "bomba" then dxDrawImage((screenW+350/game)/2, (screenH-370/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement4 == "rubin" then dxDrawImage((screenW+350/game)/2, (screenH-370/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement4 == "none" then	dxDrawRectangle((screenW+350/game)/2, (screenH-370/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement5 == "bomba" then dxDrawImage((screenW+200/game)/2, (screenH-370/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement5 == "rubin" then dxDrawImage((screenW+200/game)/2, (screenH-370/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement5 == "none" then	dxDrawRectangle((screenW+200/game)/2, (screenH-370/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            --. 2 строка 
            if stateElement6 == "bomba" then dxDrawImage((screenW+800/game)/2, (screenH-220/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement6 == "rubin" then dxDrawImage((screenW+800/game)/2, (screenH-220/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement6 == "none" then	dxDrawRectangle((screenW+800/game)/2, (screenH-220/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement7 == "bomba" then dxDrawImage((screenW+650/game)/2, (screenH-220/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement7 == "rubin" then dxDrawImage((screenW+650/game)/2, (screenH-220/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement7 == "none" then	dxDrawRectangle((screenW+650/game)/2, (screenH-220/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement8 == "bomba" then dxDrawImage((screenW+500/game)/2, (screenH-220/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement8 == "rubin" then dxDrawImage((screenW+500/game)/2, (screenH-220/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement8 == "none" then	dxDrawRectangle((screenW+500/game)/2, (screenH-220/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement9 == "bomba" then dxDrawImage((screenW+350/game)/2, (screenH-220/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement9 == "rubin" then dxDrawImage((screenW+350/game)/2, (screenH-220/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement9 == "none" then	dxDrawRectangle((screenW+350/game)/2, (screenH-220/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement10 == "bomba" then dxDrawImage((screenW+200/game)/2, (screenH-220/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement10 == "rubin" then dxDrawImage((screenW+200/game)/2, (screenH-220/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement10 == "none" then	dxDrawRectangle((screenW+200/game)/2, (screenH-220/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            --. 3 строка 
            if stateElement11 == "bomba" then dxDrawImage((screenW+800/game)/2, (screenH-70/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement11 == "rubin" then dxDrawImage((screenW+800/game)/2, (screenH-70/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement11 == "none" then	dxDrawRectangle((screenW+800/game)/2, (screenH-70/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement12 == "bomba" then dxDrawImage((screenW+650/game)/2, (screenH-70/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement12 == "rubin" then dxDrawImage((screenW+650/game)/2, (screenH-70/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement12 == "none" then	dxDrawRectangle((screenW+650/game)/2, (screenH-70/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement13 == "bomba" then dxDrawImage((screenW+500/game)/2, (screenH-70/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement13 == "rubin" then dxDrawImage((screenW+500/game)/2, (screenH-70/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement13 == "none" then	dxDrawRectangle((screenW+500/game)/2, (screenH-70/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement14 == "bomba" then dxDrawImage((screenW+350/game)/2, (screenH-70/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement14 == "rubin" then dxDrawImage((screenW+350/game)/2, (screenH-70/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement14 == "none" then	dxDrawRectangle((screenW+350/game)/2, (screenH-70/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement15 == "bomba" then dxDrawImage((screenW+200/game)/2, (screenH-70/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement15 == "rubin" then dxDrawImage((screenW+200/game)/2, (screenH-70/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement15 == "none" then	dxDrawRectangle((screenW+200/game)/2, (screenH-70/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            --. 4 строка 
            if stateElement16 == "bomba" then dxDrawImage((screenW+800/game)/2, (screenH+80/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement16 == "rubin" then dxDrawImage((screenW+800/game)/2, (screenH+80/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement16 == "none" then	dxDrawRectangle((screenW+800/game)/2, (screenH+80/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement17 == "bomba" then dxDrawImage((screenW+650/game)/2, (screenH+80/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement17 == "rubin" then dxDrawImage((screenW+650/game)/2, (screenH+80/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement17 == "none" then	dxDrawRectangle((screenW+650/game)/2, (screenH+80/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement18 == "bomba" then dxDrawImage((screenW+500/game)/2, (screenH+80/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement18 == "rubin" then dxDrawImage((screenW+500/game)/2, (screenH+80/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement18 == "none" then	dxDrawRectangle((screenW+500/game)/2, (screenH+80/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement19 == "bomba" then dxDrawImage((screenW+350/game)/2, (screenH+80/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement19 == "rubin" then dxDrawImage((screenW+350/game)/2, (screenH+80/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement19 == "none" then	dxDrawRectangle((screenW+350/game)/2, (screenH+80/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement20 == "bomba" then dxDrawImage((screenW+200/game)/2, (screenH+80/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement20 == "rubin" then dxDrawImage((screenW+200/game)/2, (screenH+80/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement20 == "none" then	dxDrawRectangle((screenW+200/game)/2, (screenH+80/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            --. 5 строка 
            if stateElement21 == "bomba" then dxDrawImage((screenW+800/game)/2, (screenH+230/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement21 == "rubin" then dxDrawImage((screenW+800/game)/2, (screenH+230/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement21 == "none" then	dxDrawRectangle((screenW+800/game)/2, (screenH+230/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement22 == "bomba" then dxDrawImage((screenW+650/game)/2, (screenH+230/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement22 == "rubin" then dxDrawImage((screenW+650/game)/2, (screenH+230/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement22 == "none" then	dxDrawRectangle((screenW+650/game)/2, (screenH+230/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement23 == "bomba" then dxDrawImage((screenW+500/game)/2, (screenH+230/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement23 == "rubin" then dxDrawImage((screenW+500/game)/2, (screenH+230/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement23 == "none" then	dxDrawRectangle((screenW+500/game)/2, (screenH+230/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement24 == "bomba" then dxDrawImage((screenW+350/game)/2, (screenH+230/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement24 == "rubin" then dxDrawImage((screenW+350/game)/2, (screenH+230/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement24 == "none" then	dxDrawRectangle((screenW+350/game)/2, (screenH+230/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            if stateElement25 == "bomba" then dxDrawImage((screenW+200/game)/2, (screenH+230/game)/2, 65/game, 65/game, "files/bomba.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement25 == "rubin" then dxDrawImage((screenW+200/game)/2, (screenH+230/game)/2, 65/game, 65/game, "files/rubin.png", 0, 0, 0, tocolor(255, 255, 255, 255), false) 
            elseif stateElement25 == "none" then	dxDrawRectangle((screenW+200/game)/2, (screenH+230/game)/2, 65/game, 65/game, tocolor(255, 0, 0, 200), false)
            end
            
            local getCashJackpot = getElementData(localPlayer, "jackpotCash3") or 0
            if startGame == false then
                dxDrawButton( "Começar o jogo", (screenW-960/game)/2, (screenH+438/game)/2, 276/game, 49/game, tocolor(220,20,60, 0), tocolor(220,20,60, 0), tocolor(255, 255, 255, 0), tocolor(255, 255, 255, 0), "default-bold")	
		    else
		    	dxDrawButton( "Sacar : R$"..convertNumber(getCashJackpot).."", (screenW-958/game)/2, (screenH+438/game)/2, 274/game, 47/game, tocolor(255, 0, 0, 255), tocolor(255, 0, 0, 255), tocolor(255, 255, 255, 200), tocolor(255, 255, 255, 255), "default-bold")	
		    end
            if failRender == true then 
            	dxDrawRectangle((screenW-400/game)/2, (screenH-150/game)/2, 400/game, 150/game, tocolor(255, 0, 0, 255), false)
            	dxDrawText("Explodiu!", (screenW-400/game)/2, (screenH-60/game)/2, (screenW-400/game)/2+400/game, 32/game, tocolor(255, 255, 255, 255), 2, "default-bold", "center", "top")
            	dxDrawText("Tente na proxima...", (screenW-400/game)/2, (screenH+20/game)/2, (screenW-400/game)/2+400/game, 32/game, tocolor(255, 255, 255, 255), 1, "default-bold", "center", "top")
            	dxDrawButton( "Concluir", (screenW-400/game)/2, (screenH+170/game)/2, 400/game, 32/game, tocolor(255, 0, 0, 255), tocolor(255, 0, 0, 255), tocolor(255, 255, 255, 255), tocolor(255, 255, 255, 255), "default-bold")	
            end           
        end
	end
)

addEventHandler("onClientGUIChanged", editAmount, 
	function() 
		local getEditAmount = guiGetText(editAmount)
        if (string.find(getEditAmount, " ")) or (getEditAmount == "") then return end
		local checkAgeElement = string.gsub( getEditAmount, "[^%d]", "") --/ Проверить, чтобы нельзя было вписать русский, анлгийские символы 
		if (getEditAmount ~= checkAgeElement) then
			outputChatBox("Saldo insuficiente inserido, mínimo: Você pode jogar R$1000", 255, 0, 0, true )
			return 
		end
    end
)

addEventHandler ( "onClientClick", root, 
	function(button, state)
        if button == "left" and state == "down" then
            if mainRender == true or failRender == true then
        	    if setDxCursor((screenW+850/game)/2, (screenH-y/game)/2, 55/game, 65/game) then --. закрыть окно 
        	    	guiSetText(editAmount, "")
                	removeBombState()
                	mainRender = false 
		            showCursor(false)
                    failRender = false
                    setElementData(localPlayer, "jackpotCash3", 0)
                    guiSetVisible(editAmount, false)
                end
            end
        	if failRender == true then
        		if setDxCursor((screenW-400/game)/2, (screenH+170/game)/2, 400/game, 32/game) then --. играть еще раз 
        			failRender = false
                    removeBombState()
                    guiSetVisible(editAmount, true)
        		end
        	end
        	if mainRender == true and failRender == false then
        		if startGame == false then
        			if setDxCursor((screenW-950/game)/2, (screenH+430/game)/2, 245/game, 55/game) then --. играть 
        				local getEditAmount = guiGetText(editAmount)
        				if (string.find(getEditAmount, " ")) or (getEditAmount == "") then return end
						local checkAgeElement = string.gsub( getEditAmount, "[^%d]", "") --/ Проверить, чтобы нельзя было вписать русский, анлгийские символы 
						if (getEditAmount ~= checkAgeElement) then
		       				    outputChatBox("Saldo insuficiente inserido, mínimo: Você pode jogar R$1000", 255, 0, 0, true )
							return 
						end
						if getPlayerMoney() < tonumber(getEditAmount) then  --Недостаточно средств
        		                outputChatBox("Saldo Insuficiente!", 255, 0, 0, true )
        		            return
        		        end
        		        if getPlayerMoney() > 80000000 then  --Недостаточно средств
        		                outputChatBox("A quantidade que você quer jogar é demais..", 255, 0, 0, true )
        		            return
        		        end
        		        startGame = true
        		        setElementData(localPlayer, "jackpotCash3", 0)
        		        triggerServerEvent ( "takeMoneyBalance", localPlayer, getEditAmount);
        		    end
        		elseif startGame == true then
        			if setDxCursor((screenW-950/game)/2, (screenH+430/game)/2, 245/game, 55/game) then --. забрать 
        		        startGame = false
        		        guiSetText(editAmount, "")
                	    removeBombState()
        		        --тригерр на то чтобы забрать
        		        local getMoney = getElementData(localPlayer, "jackpotCash3") or 0
        		        triggerServerEvent ( "giveCashMoney", localPlayer, getMoney);
        		    end
        		end
        		   

                --. кол-во бобочек 
                if setDxCursor((screenW-950/game)/2, (screenH-65/game)/2, 50/game, 50/game) then
                	if countbomb5 == true then countbomb5 = false end 
                	if countbomb10 == true then countbomb10 = false end 
                	if countbomb18 == true then countbomb18 = false end 
                	countbomb3 = true 
                	setElementData(localPlayer, "jackpotCash3", 0)
                elseif setDxCursor((screenW-820/game)/2, (screenH-65/game)/2, 50/game, 50/game) then
                	if countbomb3 == true then countbomb3 = false end 
                	if countbomb10 == true then countbomb10 = false end 
                	if countbomb18 == true then countbomb18 = false end 
                	countbomb5 = true 
                elseif setDxCursor((screenW-690/game)/2, (screenH-65/game)/2, 50/game, 50/game) then
                	if countbomb3 == true then countbomb3 = false end 
                	if countbomb5 == true then countbomb5 = false end 
                	if countbomb18 == true then countbomb18 = false end 
                	countbomb10 = true
                elseif setDxCursor((screenW-560/game)/2, (screenH-65/game)/2, 50/game, 50/game) then
                    if countbomb3 == true then countbomb3 = false end 
                	if countbomb5 == true then countbomb5 = false end 
                	if countbomb10 == true then countbomb10 = false end 
                	countbomb18 = true
        		--. иконки и квадраты 
        	    elseif setDxCursor((screenW+800/game)/2, (screenH-370/game)/2, 65/game, 65/game) then
        	    	if startGame == true then
        	    		if stopClick1 == true then return end 
        	    		local randomElement1 = math.random(startRandom, FinishRandom )
        	    		if randomElement1 == 1 then 
        	    			stateElement1 = "bomba"
        	    			stopClick1 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    		elseif randomElement1 == 2 then 
        	    	    	stateElement1 = "rubin" 
        	    	    	stopClick1 = true 
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    			setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement1 == 3 then 
        	    	    	stateElement1 = "rubin"  
        	    	    	stopClick1 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    		end 
        	    		if stateElement1 == "bomba" then   
        	    	    	checkedBomb()
        	    	    	stopClick1 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                	end
                elseif setDxCursor((screenW+650/game)/2, (screenH-370/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick2 == true then return end 
        	    		local randomElement2 = math.random(startRandom, FinishRandom )
        	    		if randomElement2 == 1 then 
        	    			stateElement2 = "bomba" 
        	    			stopClick2 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement2 == 2 then 
        	    	    	stateElement2 = "rubin" 
        	    	    	stopClick2 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement2 == 3 then 
        	    	    	stateElement2 = "rubin" 
        	    	    	stopClick2 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement2 == "bomba" then  
        	    	    	stopClick2 = true
        	    	    	checkedBomb()
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+500/game)/2, (screenH-370/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick3 == true then return end 
        	    		local randomElement3 = math.random(startRandom, FinishRandom )
        	    		if randomElement3 == 1 then 
        	    			stateElement3 = "bomba" 
        	    			stopClick3 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement3 == 2 then 
        	    	    	stateElement3 = "rubin" 
        	    	    	stopClick3 = true
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement3 == 3 then 
        	    	    	stateElement3 = "rubin" 
        	    	    	stopClick3 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement3 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick3 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end
                    end
                elseif setDxCursor((screenW+350/game)/2, (screenH-370/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick4 == true then return end 
        	    		local randomElement4 = math.random(startRandom, FinishRandom )
        	    		if randomElement4 == 1 then 
        	    			stateElement4 = "bomba" 
        	    			stopClick4 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement4 == 2 then 
        	    	    	stateElement4 = "rubin" 
        	    	    	stopClick4 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement4 == 3 then 
        	    	    	stateElement4 = "rubin" 
        	    	    	stopClick4 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement4 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick4 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+200/game)/2, (screenH-370/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick5 == true then return end 
        	    		local randomElement5 = math.random(startRandom, FinishRandom )
        	    		if randomElement5 == 1 then 
        	    			stateElement5 = "bomba" 
        	    			stopClick5 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement5 == 2 then 
        	    	    	stateElement5 = "rubin" 
        	    	    	stopClick5 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement5 == 3 then 
        	    	    	stateElement5 = "rubin" 
        	    	    	stopClick5 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement5 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick5 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                --. 2 строка 
                elseif setDxCursor((screenW+800/game)/2, (screenH-220/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick6 == true then return end 
        	    		local randomElement6 = math.random(startRandom, FinishRandom )
        	    		if randomElement6 == 1 then 
        	    			stateElement6 = "bomba" 
        	    			stopClick6 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement6 == 2 then 
        	    	    	stateElement6 = "rubin" 
        	    	    	stopClick6 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement6 == 3 then 
        	    	    	stateElement6 = "rubin" 
        	    	    	stopClick6 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement6 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick6 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+650/game)/2, (screenH-220/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick7 == true then return end 
        	    		local randomElement7 = math.random(startRandom, FinishRandom )
        	    		if randomElement7 == 1 then 
        	    			stateElement7 = "bomba" 
        	    			stopClick7 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement7 == 2 then 
        	    	    	stateElement7 = "rubin" 
        	    	    	stopClick7 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement7 == 3 then 
        	    	    	stateElement7 = "rubin" 
        	    	    	stopClick7 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement7 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick7 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+500/game)/2, (screenH-220/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick8 == true then return end 
        	    		local randomElement8 = math.random(startRandom, FinishRandom )
        	    		if randomElement8 == 1 then 
        	    			stateElement8 = "bomba" 
        	    			stopClick8 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement8 == 2 then 
        	    	    	stateElement8 = "rubin" 
        	    	    	stopClick8 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement8 == 3 then 
        	    	    	stateElement8 = "rubin" 
        	    	    	stopClick8 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement8 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick8 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+350/game)/2, (screenH-220/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick9 == true then return end 
        	    		local randomElement9 = math.random(startRandom, FinishRandom )
        	    		if randomElement9 == 1 then 
        	    			stateElement9 = "bomba" 
        	    			stopClick9 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement9 == 2 then 
        	    	    	stateElement9 = "rubin" 
        	    	    	stopClick9 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement9 == 3 then 
        	    	    	stateElement9 = "rubin" 
        	    	    	stopClick9 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement9 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick9 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+200/game)/2, (screenH-220/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick10 == true then return end 
        	    		local randomElement10 = math.random(startRandom, FinishRandom )
        	    		if randomElement10 == 1 then 
        	    			stateElement10 = "bomba" 
        	    			stopClick10 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement10 == 2 then 
        	    	    	stateElement10 = "rubin" 
        	    	    	stopClick10 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement10 == 3 then 
        	    	    	stateElement10 = "rubin" 
        	    	    	stopClick10 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement10 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick10 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                --. 3 строка 
                elseif setDxCursor((screenW+800/game)/2, (screenH-70/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick11 == true then return end 
        	    		local randomElement11 = math.random(startRandom, FinishRandom )
        	    		if randomElement11 == 1 then 
        	    			stateElement11 = "bomba" 
        	    			stopClick11 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement11 == 2 then 
        	    	    	stateElement11 = "rubin" 
        	    	    	stopClick11 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement11 == 3 then 
        	    	    	stateElement11 = "rubin" 
        	    	    	stopClick11 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement11 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick11 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+650/game)/2, (screenH-70/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick12 == true then return end 
        	    		local randomElement12 = math.random(startRandom, FinishRandom )
        	    		if randomElement12 == 1 then 
        	    			stateElement12 = "bomba" 
        	    			stopClick12 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement12 == 2 then 
        	    	    	stateElement12 = "rubin" 
        	    	    	stopClick12 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement12 == 3 then 
        	    	    	stateElement12 = "rubin" 
        	    	    	stopClick12 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement12 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick12 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+500/game)/2, (screenH-70/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick13 == true then return end 
        	    		local randomElement13 = math.random(startRandom, FinishRandom )
        	    		if randomElement13 == 1 then 
        	    			stateElement13 = "bomba" 
        	    			stopClick13 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement13 == 2 then 
        	    	    	stateElement13 = "rubin" 
        	    	    	stopClick13 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement13 == 3 then 
        	    	    	stateElement13 = "rubin" 
        	    	    	stopClick13 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement13 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick13 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+350/game)/2, (screenH-70/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick14 == true then return end 
        	    		local randomElement14 = math.random(startRandom, FinishRandom )
        	    		if randomElement14 == 1 then 
        	    			stateElement14 = "bomba" 
        	    			stopClick14 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement14 == 2 then 
        	    	    	stateElement14 = "rubin" 
        	    	    	stopClick14 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement14 == 3 then 
        	    	    	stateElement14 = "rubin" 
        	    	    	stopClick14 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement14 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick14 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+200/game)/2, (screenH-70/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick15 == true then return end 
        	    		local randomElement15 = math.random(startRandom, FinishRandom )
        	    		if randomElement15 == 1 then 
        	    			stateElement15 = "bomba" 
        	    			stopClick15 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement15 == 2 then 
        	    	    	stateElement15 = "rubin" 
        	    	    	stopClick15 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement15 == 3 then 
        	    	    	stateElement15 = "rubin" 
        	    	    	stopClick15 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement15 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick15 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end



                --. 4 строка 
                elseif setDxCursor((screenW+800/game)/2, (screenH+80/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick16 == true then return end 
        	    		local randomElement16 = math.random(startRandom, FinishRandom )
        	    		if randomElement16 == 1 then 
        	    			stateElement16 = "bomba" 
        	    			stopClick16 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement16 == 2 then 
        	    	    	stateElement16 = "rubin" 
        	    	    	stopClick16 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement16 == 3 then 
        	    	    	stateElement16 = "rubin" 
        	    	    	stopClick16 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement16 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick16 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+650/game)/2, (screenH+80/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick17 == true then return end 
        	    		local randomElement17 = math.random(startRandom, FinishRandom )
        	    		if randomElement17 == 1 then 
        	    			stateElement17 = "bomba" 
        	    			stopClick17 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement17 == 2 then 
        	    	    	stateElement17 = "rubin" 
        	    	    	stopClick17 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement17 == 3 then 
        	    	    	stateElement17 = "rubin" 
        	    	    	stopClick17 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement17 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick17 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+500/game)/2, (screenH+80/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick18 == true then return end 
        	    		local randomElement18 = math.random(startRandom, FinishRandom )
        	    		if randomElement18 == 1 then 
        	    			stateElement18 = "bomba" 
        	    			stopClick18 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement18 == 2 then 
        	    	    	stateElement18 = "rubin" 
        	    	    	stopClick18 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement18 == 3 then 
        	    	    	stateElement18 = "rubin" 
        	    	    	stopClick18 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement18 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick18 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+350/game)/2, (screenH+80/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick19 == true then return end 
        	    		local randomElement19 = math.random(startRandom, FinishRandom )
        	    		if randomElement19 == 1 then 
        	    			stateElement19 = "bomba" 
        	    			stopClick19 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement19 == 2 then 
        	    	    	stateElement19 = "rubin" 
        	    	    	stopClick19 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement19 == 3 then 
        	    	    	stateElement19 = "rubin" 
        	    	    	stopClick19 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement19 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick19 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+200/game)/2, (screenH+80/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick20 == true then return end 
        	    		local randomElement20 = math.random(startRandom, FinishRandom )
        	    		if randomElement20 == 1 then 
        	    			stateElement20 = "bomba" 
        	    			stopClick20 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement20 == 2 then 
        	    	    	stateElement20 = "rubin" 
        	    	    	stopClick20 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement20 == 3 then 
        	    	    	stateElement20 = "rubin" 
        	    	    	stopClick20 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement20 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick20 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end




                --. 5 строка 
                elseif setDxCursor((screenW+800/game)/2, (screenH+230/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick21 == true then return end 
        	    		local randomElement21 = math.random(startRandom, FinishRandom )
        	    		if randomElement21 == 1 then 
        	    			stateElement21 = "bomba" 
        	    			stopClick21 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement21 == 2 then 
        	    	    	stateElement21 = "rubin" 
        	    	    	stopClick21 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement21 == 3 then 
        	    	    	stateElement21 = "rubin" 
        	    	    	stopClick21 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement21 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick21 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+650/game)/2, (screenH+230/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick22 == true then return end 
        	    		local randomElement22 = math.random(startRandom, FinishRandom )
        	    		if randomElement22 == 1 then 
        	    			stateElement22 = "bomba" 
        	    			stopClick22 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement22 == 2 then 
        	    	    	stateElement22 = "rubin" 
        	    	    	stopClick22 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement22 == 3 then 
        	    	    	stateElement22 = "rubin" 
        	    	    	stopClick22 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement22 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick22 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+500/game)/2, (screenH+230/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick23 == true then return end 
        	    		local randomElement23 = math.random(startRandom, FinishRandom )
        	    		if randomElement23 == 1 then 
        	    			stateElement23 = "bomba" 
        	    			stopClick23 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement23 == 2 then 
        	    	    	stateElement23 = "rubin" 
        	    	    	stopClick23 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement23 == 3 then 
        	    	    	stateElement23 = "rubin" 
        	    	    	stopClick23 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement23 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick23 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+350/game)/2, (screenH+230/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick24 == true then return end 
        	    		local randomElement24 = math.random(startRandom, FinishRandom )
        	    		if randomElement24 == 1 then 
        	    			stateElement24 = "bomba" 
        	    			stopClick24 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement24 == 2 then 
        	    	    	stateElement24 = "rubin" 
        	    	    	stopClick24 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement24 == 3 then 
        	    	    	stateElement24 = "rubin" 
        	    	    	stopClick24 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement24 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick24 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
                elseif setDxCursor((screenW+200/game)/2, (screenH+230/game)/2, 65/game, 65/game) then
                	if startGame == true then
                		if stopClick25 == true then return end 
        	    		local randomElement25 = math.random(startRandom, FinishRandom )
        	    		if randomElement25 == 1 then 
        	    			stateElement25 = "bomba" 
        	    			stopClick25 = true
        	    			setElementData(localPlayer, "jackpotCash3", 0)
        	    	    elseif randomElement25 == 2 then 
        	    	    	stateElement25 = "rubin" 
        	    	    	stopClick25 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    elseif randomElement25 == 3 then 
        	    	    	stateElement25 = "rubin" 
        	    	    	stopClick25 = true
        	    	    	local getCash = getElementData(localPlayer, "jackpotCash3")
        	    	    	local getEditAmount = guiGetText(editAmount)
        	    	    	setElementData(localPlayer, "jackpotCash3", getCash+getEditAmount * 1.20)
        	    	    end 
        	    	    if stateElement25 == "bomba" then  
        	    	    	checkedBomb()
        	    	    	stopClick25 = true
        	    	    	failRender = true
        	    	    	guiSetVisible(editAmount, false)
        	    	    end 
                    end
        		end
        	end
        end
    end
)

function checkedBomb()
	if stateElement1 or stateElement2 or stateElement3 or stateElement4 or stateElement5 or stateElement6
	or stateElement7 or stateElement8 or stateElement9 or stateElement10 or stateElement11 or stateElement12 
    or stateElement13 or stateElement14 or stateElement15 or stateElement16 or stateElement17 or stateElement18 
    or stateElement19 or stateElement20 or stateElement21 or stateElement22 or stateElement23 or stateElement24
    or stateElement25 == "bomba" then 
		setTimer ( function ()
            removeBombState()
        end, 500, 1)
	end
end

function removeBombState()
	stateElement1 = "none"
    stateElement2 = "none"
    stateElement3 = "none"
    stateElement4 = "none"
    stateElement5 = "none"
    stateElement6 = "none"
    stateElement7 = "none"
    stateElement8 = "none"
    stateElement9 = "none"
    stateElement10 = "none"
    stateElement11 = "none"
    stateElement12 = "none"
    stateElement13 = "none"
    stateElement14 = "none"
    stateElement15 = "none"
    stateElement16 = "none"
    stateElement17 = "none"
    stateElement18 = "none"
    stateElement19 = "none"
    stateElement20 = "none"
    stateElement21 = "none"
    stateElement22 = "none"
    stateElement23 = "none"
    stateElement24 = "none"
    stateElement25 = "none"

    stopClick1 = false    
    stopClick2 = false 
    stopClick3 = false 
    stopClick4 = false 
    stopClick5 = false 
    stopClick6 = false
    stopClick7 = false 
    stopClick8 = false 
    stopClick9 = false 
    stopClick10 = false 
    stopClick11 = false 
    stopClick12 = false 
    stopClick13 = false 
    stopClick14 = false 
    stopClick15 = false 
    stopClick16 = false 
    stopClick17 = false 
    stopClick18 = false 
    stopClick19 = false 
    stopClick20 = false 
    stopClick21 = false 
    stopClick22 = false 
    stopClick23 = false 
    stopClick24 = false 
    stopClick25 = false 
    startGame = false
end

--// Полезные функции 
function setDxCursor(x,y,w,h)
	if isCursorShowing() then
		local mx,my = getCursorPosition() 
		local cursorx,cursory = mx*screenW, my*screenH
		if cursorx > x and cursorx < x + w and cursory > y and cursory < y + h then
			return true
		end
	end
    return false
end

function dxDrawButton( text, x, y, w, h, colorDefault, colorCursor, colorTextDefault, colorTextCursor, font, postGUI )	
	if setDxCursor(x, y, w, h) then 
		dxDrawRectangle( x, y, w, h, colorCursor, postGUI )
		dxDrawText ( text, x, y, x+w, y+h, colorTextCursor, 1, font, "center", "center", false, false, false, true )
	else
        dxDrawRectangle( x, y, w, h, colorDefault, postGUI )
        dxDrawText ( text, x, y, x+w, y+h, colorTextDefault, 1, font, "center", "center", false, false, false, true )
	end
end

function convertNumber(number)  
	local formatted = number  
	while true do      
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1 %2')    
		if (k == 0) then      
			break   
		end  
	end  
	return formatted
end


