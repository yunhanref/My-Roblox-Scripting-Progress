--event: if this happens then execute the code
--event examples: user touch, player join/removing


-- 1) Touched Event
local block = script.Parent
local function touching(touchedpart)
	-- Check if the touching parts parent is Humanoid (player)
	local character = touchedpart.Parent
	local humanoid = character:FindFirstChild("Humanoid")

	if humanoid then
		canbetouched = false
		-- if humanoid, change the color randomly
		blok.BrickColor = BrickColor.Random()
		
	end
end

-- Connect the event and function.
block.Touched:Connect(touching)
--SOLVE HOW TO MAKE IT CHANGE COLOR FOR ONE TIME. IT CHANGES MULTIPLE TIMES!



-- 2) PlayerAdded Event
local Players = game:GetService("Players")
local function playerJoined(player)
	print("Welcome, " .. player.Name .. " you have joined.")
end

-- Connect the event and function
Players.PlayerAdded:Connect(playerJoined)


-- 3) PlayerRemoving Event
local function playerLeft(oyuncu)
	print("Goodbye ".. player.Name .." take care.")
end
Players.PlayerRemoving:Connect(playerLeft)