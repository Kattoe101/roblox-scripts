-- Gui to Lua
-- Version: 3.2

-- Instances:

local sbautofarm = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Button = Instance.new("TextButton")

--Properties:

sbautofarm.Name = "sb.autofarm"
sbautofarm.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
sbautofarm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = sbautofarm
Frame.BackgroundColor3 = Color3.fromRGB(235, 152, 35)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.418874174, 0, 0.417874396, 0)
Frame.Size = UDim2.new(0, 70, 0, 47)
Frame.ZIndex = 999999998

Button.Name = "Button"
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(226, 212, 20)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.Position = UDim2.new(0.108736746, 0, 0.15639253, 0)
Button.Size = UDim2.new(0, 54, 0, 32)
Button.ZIndex = 999999999
Button.Font = Enum.Font.SourceSans
Button.Text = "off"
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 34.000

-- Scripts:

local function CCNX_fake_script() -- Button.on/off 
	local script = Instance.new('LocalScript', Button)

	local afk = script.Parent.Text
	
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Text ~= "on" then
			script.Parent.Text = "on"
		else
			script.Parent.Text = "off"
		end
	end)
	
end
coroutine.wrap(CCNX_fake_script)()
local function PLJNN_fake_script() -- Button.loop.tp 
	local script = Instance.new('LocalScript', Button)

	local textButton = script.Parent
	local isRunning = false
	
	textButton.MouseButton1Click:Connect(function()
		if textButton.Text == "on" then
			if not isRunning then
				isRunning = true
				while isRunning and textButton.Text == "on" do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.05339909, 464.527893, 31.5693302, 0.490018576, 4.31568949e-08, 0.871711969, 2.26567209e-08, 1, -6.2244311e-08, -0.871711969, 5.02510034e-08, 0.490018576)
					wait(5)
					print("Lus loopt...")
					wait(1)
				end
			else
				isRunning = false
			end
		end
	end)
end
coroutine.wrap(PLJNN_fake_script)()
local function GJGD_fake_script() -- sbautofarm.draggable 
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
coroutine.wrap(GJGD_fake_script)()
local function NCKRU_fake_script() -- sbautofarm.prevent.kick 
	local script = Instance.new('LocalScript', sbautofarm)

	local vu = game:GetService("VirtualUser")
	
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end
coroutine.wrap(NCKRU_fake_script)()
