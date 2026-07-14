--When the key block is touched, the door will be "open" for a small time. 
--The doors transparency and color will indicate that the player can move further. 
--All stair steps have a time limit which when expired, if falls to the ground.

local door = script.Parent.DOORpart
local button = script.Parent.DOORBUTTONpart

button.Touched:Connect(function(TouchButton)
	if TouchButton.Parent:FindFirstChild("Humanoid") then --if the touching parts parent is humanoid (player) then...
		print("Door Active...")
		door.CanCollide = false
		door.Transparency = 0.5
		door.BrickColor = BrickColor.new("Lime green")
		for i = 5,1,-1 do
			print("Will be closed in:	", i ,"seconds...")
			task.wait(1)
		end
		door.CanCollide = true
		door.BrickColor = BrickColor.new("Maroon")
		door.Transparency = 0
	end
	
end)

--To make the stairs fall down, we will uncheck the anchored option for.
--If humanoid then a second later the stair will be un-anchored.
local stair1 = script.Parent.merdiven1
local stair2 = script.Parent.merdiven2
local stair3 = script.Parent.merdiven3
local stair4 = script.Parent.merdiven4
local stair5 = script.Parent.merdiven5

stair1.Touched:Connect(function(TouchStairs)
	if TouchStairs.Parent:FindFirstChild("Humanoid") then
		print("stair goes down")
		task.wait(1)
		stair1.Anchored = false
	end
end)
stair2.Touched:Connect(function(TouchStairs)
	if TouchStairs.Parent:FindFirstChild("Humanoid") then
		print("stair goes down")
		task.wait(1)
		stair2.Anchored = false
	end
end)
stair3.Touched:Connect(function(TouchStairs)
	if TouchStairs.Parent:FindFirstChild("Humanoid") then
		print("stair goes down")
		task.wait(1)
		stair3.Anchored = false
	end
end)
stair4.Touched:Connect(function(TouchStairs)
	if TouchStairs.Parent:FindFirstChild("Humanoid") then
		print("stair goes down")
		task.wait(1)
		stair4.Anchored = false
	end
end)
stair5.Touched:Connect(function(TouchStairs)
	if TouchStairs.Parent:FindFirstChild("Humanoid") then
		print("stair goes down")
		task.wait(1)
		stair5.Anchored = false
	end
end)
local deathfloor = game.Workspace.PARKOURGAME.DeathFloorPart
deathfloor.Touched:Connect(function(TouchFloor)
	if TouchFloor.Parent:FindFirstChild("Humanoid") then
		local health =TouchFloor.Parent:FindFirstChild("Humanoid").Health
		TouchFloor.Parent:FindFirstChild("Humanoid").Health -= 10
		task.wait(2)
		print("-10")
		task.wait(2)
	end
end)