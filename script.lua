local plr = game.Players.LocalPlayer
local id = tonumber(game.GameId)
local target = 734159876

if id == 321279858 then
	print("loaded!!")
	-- Gui to Lua
-- Version: 3.2

-- Instances:

local sbautofarm = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local OnOff = Instance.new("TextButton")
local TeethReceived = Instance.new("TextLabel")

--Properties:

sbautofarm.Name = "sb.autofarm"
sbautofarm.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
sbautofarm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = sbautofarm
Frame.BackgroundColor3 = Color3.fromRGB(235, 152, 35)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.398950398, 0, 0.443817794, 0)
Frame.Size = UDim2.new(0, 228, 0, 47)
Frame.ZIndex = 999999999

OnOff.Name = "On/Off"
OnOff.Parent = Frame
OnOff.BackgroundColor3 = Color3.fromRGB(226, 212, 20)
OnOff.BorderColor3 = Color3.fromRGB(0, 0, 0)
OnOff.Position = UDim2.new(0.0419273973, 0, 0.15639253, 0)
OnOff.Size = UDim2.new(0, 54, 0, 32)
OnOff.ZIndex = 999999999
OnOff.Font = Enum.Font.SourceSans
OnOff.Text = "off"
OnOff.TextColor3 = Color3.fromRGB(0, 0, 0)
OnOff.TextSize = 34.000

TeethReceived.Name = "TeethReceived"
TeethReceived.Parent = Frame
TeethReceived.BackgroundColor3 = Color3.fromRGB(226, 212, 20)
TeethReceived.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeethReceived.Position = UDim2.new(0.320103705, 0, 0.156392843, 0)
TeethReceived.Size = UDim2.new(0, 146, 0, 32)
TeethReceived.Font = Enum.Font.SourceSans
TeethReceived.Text = "Teeth received: 0"
TeethReceived.TextColor3 = Color3.fromRGB(0, 0, 0)
TeethReceived.TextSize = 18.000

-- Scripts:

local function ABMOYPF_fake_script() -- OnOff.on/off 
	local script = Instance.new('LocalScript', OnOff)

	local afk = script.Parent.Text
	
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Text == "off" then
			script.Parent.Text = "on"
		else
			script.Parent.Text = "off"
		end
	end)
	
end
coroutine.wrap(ABMOYPF_fake_script)()
local function TWCWXCS_fake_script() -- OnOff.loop.tp 
	local script = Instance.new('LocalScript', OnOff)

	local textButton = script.Parent
	local isRunning = false
	
	textButton.MouseButton1Click:Connect(function()
		if textButton.Text == "on" then
			if not isRunning then
				isRunning = true
				while isRunning and textButton.Text == "on" do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.05339909, 464.527893, 31.5693302, 0.490018576, 4.31568949e-08, 0.871711969, 2.26567209e-08, 1, -6.2244311e-08, -0.871711969, 5.02510034e-08, 0.490018576)
					wait(4)
				end
			else
				isRunning = false
			end
		end
	end)
end
coroutine.wrap(TWCWXCS_fake_script)()
local function KAHKZ_fake_script() -- TeethReceived.LocalScript 
	local script = Instance.new('LocalScript', TeethReceived)

	local TextLabel = game:GetService("Players").LocalPlayer.PlayerGui.CoreGuis.Coins.Scorebox.TextLabel
	local label = script.Parent
	local received = 0
	
	local function onTextChanged()
		received = received + 10
		label.Text = ("Teeth received: ".. received)
	end
	
	TextLabel.Changed:Connect(onTextChanged)
	
end
coroutine.wrap(KAHKZ_fake_script)()
local function EADCMMI_fake_script() -- sbautofarm.draggable 
	local script = Instance.new('LocalScript', sbautofarm)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent.Frame
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(EADCMMI_fake_script)()
local function LBSG_fake_script() -- sbautofarm.preventkick 
	local script = Instance.new('LocalScript', sbautofarm)

	local vu = game:GetService("VirtualUser")
	
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end
coroutine.wrap(LBSG_fake_script)()

	else
		game:GetService("TeleportService"):Teleport(target, plr)
end