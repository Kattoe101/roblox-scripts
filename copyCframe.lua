-- made by kattoe
-- if u have any questions, suggestions or feedback you can add me on discord (kattoe)
-- created: 23-08-2023
-- updated: 27-08-2023


-- Instances:

local CopyCframe = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

--Properties:

CopyCframe.Name = "CopyCframe"
CopyCframe.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CopyCframe.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = CopyCframe
Frame.BackgroundColor3 = Color3.fromRGB(235, 152, 35)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.451559931, 0, 0.457547158, 0)
Frame.Size = UDim2.new(0, 79, 0, 49)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 219, 12)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Position = UDim2.new(0.0804860592, 0, 0.142291322, 0)
TextButton.Size = UDim2.new(0, 65, 0, 35)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Copy Cframe"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 20.000
TextButton.TextWrapped = true

-- Scripts:

local function AEHZVB_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local LocalPlayer = game:GetService("Players").LocalPlayer
	
	script.Parent.MouseButton1Click:Connect(function()
		setclipboard(LocalPlayer.character.HumanoidRootPart.CFrame)
	end)
end
coroutine.wrap(AEHZVB_fake_script)()
local function OKDAPME_fake_script() -- CopyCframe.DragScript 
	local script = Instance.new('LocalScript', CopyCframe)

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
coroutine.wrap(OKDAPME_fake_script)()
