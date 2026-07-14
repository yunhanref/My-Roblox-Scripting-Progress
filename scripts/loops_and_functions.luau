print("Hello world!")
--datatypes:
local boolean = true
local float = 0.1
local string = "string"
local integer = 1

local workspc = game.Workspace
local floor = game.Workspace.Baseplate
local bad_feelings = false

--if statements: executes the codes if the certain condition is met
if bad_feelings then --if bad_feelings == true then...
	print("you feel bad")
else
	print("you feel good") --this will be printed because bad_feelings isn't true
end

--for loops: Repeats the loop until the certain condition is completed
local nmbr1 = 5
local nmbr2 = 10
for i = nmbr1,nmbr2 do --will be printed 6 times because the boundary is [5,10]
	print("this will be printed 6x times")
end

--while loops: Continues until the condition is changed.
local value = 1
while true do
	print("value is smaller than 5")
	value += 1
	if value == 5 then
		print("value has reached: ",{value},",congrats!")
		break
	else
		continue
	end
end

--Basic Color Changing Loop Exercise
--step 1: Create a color changing sequence function
local function colorchangingbaseplate()
	floor.Color = Color3.new(1,0,0) --(Red,0,0)
	task.wait(0.3)
	floor.Color = Color3.new(0,1,0) --(0,Green,0)
	task.wait(0.3)
	floor.Color = Color3.new(0,0,1) --(0,0,Blue)
	task.wait(0.3)
end
--Make a function calling loop with "for" because we want the repetitions to be finite.
for i = 1,5 do
	colorchangingbaseplate()
end