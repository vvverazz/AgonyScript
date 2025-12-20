-- Gui to Lua
-- Version: 3.2
-- Instances:

local Menu = Instance.new("ScreenGui")
local Base = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TabBtn1 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TabBtn2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TabFrame1 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Autoparry = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Circle = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local Autospam = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local Circle_2 = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local ImageLabel_3 = Instance.new("ImageLabel")
local TabFrame2 = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local OpenBtn = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local ImageLabel_4 = Instance.new("ImageLabel")

--Properties:

Menu.Name = "Menu"
Menu.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Menu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Menu.ResetOnSpawn = false

Base.Name = "Base"
Base.Parent = Menu
Base.Active = true
Base.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Base.BackgroundTransparency = 0.200
Base.BorderColor3 = Color3.fromRGB(0, 0, 0)
Base.BorderSizePixel = 0
Base.Position = UDim2.new(0.301464438, 0, 0.210249498, 0)
Base.Size = UDim2.new(0.519999981, 0, 0.50999999, 0)

UICorner.Parent = Base

TabBtn1.Name = "TabBtn1"
TabBtn1.Parent = Base
TabBtn1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TabBtn1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabBtn1.BorderSizePixel = 0
TabBtn1.Position = UDim2.new(0.0246710591, 0, 0.156841546, 0)
TabBtn1.Size = UDim2.new(0.209999993, 0, 0.0900000036, 0)
TabBtn1.Font = Enum.Font.SourceSansBold
TabBtn1.LineHeight = 3.000
TabBtn1.Text = ""
TabBtn1.TextColor3 = Color3.fromRGB(255, 255, 255)
TabBtn1.TextSize = 18.000
TabBtn1.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 9)
UICorner_2.Parent = TabBtn1

ImageLabel.Parent = TabBtn1
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0933333337, 0, 0.223809376, 0)
ImageLabel.Size = UDim2.new(0.129999995, 0, 0.589999974, 0)
ImageLabel.Image = "rbxassetid://10455604811"
ImageLabel.ImageColor3 = Color3.fromRGB(230, 230, 230)

TextLabel.Parent = TabBtn1
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.173469692, 0, 0.227212727, 0)
TextLabel.Size = UDim2.new(0.449999988, 0, 0.560000002, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Main"
TextLabel.TextColor3 = Color3.fromRGB(182, 182, 182)
TextLabel.TextSize = 17.000
TextLabel.TextWrapped = true

TabBtn2.Name = "TabBtn2"
TabBtn2.Parent = Base
TabBtn2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TabBtn2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabBtn2.BorderSizePixel = 0
TabBtn2.Position = UDim2.new(0.024310939, 0, 0.266548395, 0)
TabBtn2.Size = UDim2.new(0.209999993, 0, 0.0900000036, 0)
TabBtn2.Font = Enum.Font.SourceSansBold
TabBtn2.LineHeight = 3.000
TabBtn2.Text = ""
TabBtn2.TextColor3 = Color3.fromRGB(255, 255, 255)
TabBtn2.TextSize = 18.000
TabBtn2.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 9)
UICorner_3.Parent = TabBtn2

ImageLabel_2.Parent = TabBtn2
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.05269894, 0, 0.16100888, 0)
ImageLabel_2.Size = UDim2.new(0.170000002, 0, 0.620000005, 0)
ImageLabel_2.Image = "rbxassetid://7992557358"
ImageLabel_2.ImageColor3 = Color3.fromRGB(182, 182, 182)

TextLabel_2.Parent = TabBtn2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(182, 182, 182)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.145820871, 0, 0.192982405, 0)
TextLabel_2.Size = UDim2.new(0.483704776, 0, 0.589999974, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Misc"
TextLabel_2.TextColor3 = Color3.fromRGB(182, 182, 182)
TextLabel_2.TextSize = 17.000
TextLabel_2.TextWrapped = true

TabFrame1.Name = "TabFrame1"
TabFrame1.Parent = Base
TabFrame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TabFrame1.BackgroundTransparency = 0.800
TabFrame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabFrame1.BorderSizePixel = 0
TabFrame1.Position = UDim2.new(0.253850847, 0, 0.154467776, 0)
TabFrame1.Size = UDim2.new(0.720000029, 0, 0.779999971, 0)

UICorner_4.CornerRadius = UDim.new(0, 9)
UICorner_4.Parent = TabFrame1

Autoparry.Name = "Autoparry"
Autoparry.Parent = TabFrame1
Autoparry.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Autoparry.BackgroundTransparency = 0.400
Autoparry.BorderColor3 = Color3.fromRGB(0, 0, 0)
Autoparry.BorderSizePixel = 0
Autoparry.Position = UDim2.new(0.032573767, 0, -5.51912862e-08, 0)
Autoparry.Size = UDim2.new(0.469999999, 0, 0.119999997, 0)
Autoparry.ZIndex = 2
Autoparry.Font = Enum.Font.SourceSans
Autoparry.Text = ""
Autoparry.TextColor3 = Color3.fromRGB(0, 0, 0)
Autoparry.TextSize = 14.000

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = Autoparry

Frame.Parent = Autoparry
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.800
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.999934018, 0)
Frame.Size = UDim2.new(1, 0, 0.00999999978, 115)

UICorner_6.Parent = Frame

Circle.Name = "Circle"
Circle.Parent = Autoparry
Circle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Circle.BorderSizePixel = 0
Circle.Position = UDim2.new(0.0565927103, 0, 0.278177887, 0)
Circle.Size = UDim2.new(0.0799999982, 0, 0.439999998, 0)

UICorner_7.CornerRadius = UDim.new(0, 5)
UICorner_7.Parent = Circle

TextLabel_3.Parent = Autoparry
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.132711306, 0, 4.04619669e-07, 0)
TextLabel_3.Size = UDim2.new(0.460000008, 0, 0.99000001, 0)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "Auto Parry"
TextLabel_3.TextColor3 = Color3.fromRGB(182, 182, 182)
TextLabel_3.TextSize = 12.000
TextLabel_3.TextStrokeColor3 = Color3.fromRGB(152, 152, 152)

Autospam.Name = "Autospam"
Autospam.Parent = TabFrame1
Autospam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Autospam.BackgroundTransparency = 0.400
Autospam.BorderColor3 = Color3.fromRGB(0, 0, 0)
Autospam.BorderSizePixel = 0
Autospam.Position = UDim2.new(0.551245928, 0, -1.65573866e-07, 0)
Autospam.Size = UDim2.new(0.400000006, 0, 0.119999997, 0)
Autospam.Font = Enum.Font.SourceSans
Autospam.Text = ""
Autospam.TextColor3 = Color3.fromRGB(0, 0, 0)
Autospam.TextSize = 14.000

UICorner_8.Parent = Autospam

TextLabel_4.Parent = Autospam
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.136592925, 0, 8.09239339e-07, 0)
TextLabel_4.Size = UDim2.new(0.540000021, 0, 0.899999976, 0)
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = "Auto Spam"
TextLabel_4.TextColor3 = Color3.fromRGB(182, 182, 182)
TextLabel_4.TextSize = 12.000
TextLabel_4.TextStrokeColor3 = Color3.fromRGB(152, 152, 152)

Circle_2.Name = "Circle"
Circle_2.Parent = Autospam
Circle_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Circle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Circle_2.BorderSizePixel = 0
Circle_2.Position = UDim2.new(0.0565927103, 0, 0.278177887, 0)
Circle_2.Size = UDim2.new(0.0799999982, 0, 0.439999998, 0)

UICorner_9.CornerRadius = UDim.new(0, 5)
UICorner_9.Parent = Circle_2

Frame_2.Parent = Base
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.0244893003, 0, 0.0436757468, 0)
Frame_2.Size = UDim2.new(0.949999988, 0, 0.0900000036, 0)

UICorner_10.CornerRadius = UDim.new(0, 9)
UICorner_10.Parent = Frame_2

ImageLabel_3.Parent = Frame_2
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Position = UDim2.new(0.0208230317, 0, 0.102766469, 0)
ImageLabel_3.Size = UDim2.new(0.119999997, 0, 0.897233665, 0)
ImageLabel_3.Image = "rbxassetid://97184415019421"

TabFrame2.Name = "TabFrame2"
TabFrame2.Parent = Base
TabFrame2.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
TabFrame2.BackgroundTransparency = 0.800
TabFrame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabFrame2.BorderSizePixel = 0
TabFrame2.Position = UDim2.new(0.250659019, 0, 0.16011031, 0)
TabFrame2.Size = UDim2.new(0.720000029, 0, 0.779999971, 0)
TabFrame2.Visible = false

UICorner_11.CornerRadius = UDim.new(0, 9)
UICorner_11.Parent = TabFrame2

OpenBtn.Name = "OpenBtn"
OpenBtn.Parent = Menu
OpenBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenBtn.BackgroundTransparency = 0.200
OpenBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenBtn.BorderSizePixel = 0
OpenBtn.Position = UDim2.new(0.48644048, 0, 0.901178062, 0)
OpenBtn.Size = UDim2.new(0.0199999996, 0, 0.0399999991, 0)
OpenBtn.Font = Enum.Font.Unknown
OpenBtn.Text = ""
OpenBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenBtn.TextScaled = true
OpenBtn.TextSize = 14.000
OpenBtn.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(1, 0)
UICorner_12.Parent = OpenBtn

ImageLabel_4.Parent = OpenBtn
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_4.BorderSizePixel = 0
ImageLabel_4.Position = UDim2.new(-0.00836647954, 0, -0.0192920808, 0)
ImageLabel_4.Size = UDim2.new(1, 0, 1, 0)
ImageLabel_4.Image = "rbxassetid://106146739319981"
ImageLabel_4.ImageColor3 = Color3.fromRGB(0, 0, 0)

-- Scripts:

local function toggleUI()
	local UserInputService = game:GetService("UserInputService")
	local gui = Menu
	local frame = gui:FindFirstChild("Base")
	if not frame then return end

	local TECLA_TOGGLE = Enum.KeyCode.G
	local menuAberto = true
	frame.Visible = true

	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == TECLA_TOGGLE then
			menuAberto = not menuAberto
			frame.Visible = menuAberto
		end
	end)
end
coroutine.wrap(toggleUI)()

local function makeDraggable()
	local UserInputService = game:GetService("UserInputService")
	local frame = Base
	local dragging = false
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		frame.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			update(input)
		end
	end)
end
coroutine.wrap(makeDraggable)()

local function tab1Switch()
	local one = Base.TabFrame1
	local two = Base.TabFrame2
	TabBtn1.MouseButton1Click:Connect(function()
		one.Visible = true
		two.Visible = false
	end)
end
coroutine.wrap(tab1Switch)()

local function tab2Switch()
	local one = Base.TabFrame1
	local two = Base.TabFrame2
	TabBtn2.MouseButton1Click:Connect(function()
		one.Visible = false
		two.Visible = true
	end)
end
coroutine.wrap(tab2Switch)()

local function autoparryToggleVisual()
	local button = Autoparry
	local circle = button:WaitForChild("Circle")
	local enabled = false
	local ON_COLOR = Color3.fromRGB(244, 244, 244)
	local OFF_COLOR = Color3.fromRGB(15, 15, 15)
	circle.BackgroundColor3 = OFF_COLOR

	button.MouseButton1Click:Connect(function()
		enabled = not enabled
		circle.BackgroundColor3 = enabled and ON_COLOR or OFF_COLOR
	end)
end
coroutine.wrap(autoparryToggleVisual)()

local function autoparryLogic()
	local button = Autoparry
	local player = game.Players.LocalPlayer
	getgenv().AutoParry = false
	getgenv().ParryConnection = nil
	getgenv().LastParry = 0
	getgenv().LastParryFrame = 0

	local function toggleAutoParry()
		if getgenv().AutoParry then
			getgenv().AutoParry = false
			if getgenv().ParryConnection then
				getgenv().ParryConnection:Disconnect()
				getgenv().ParryConnection = nil
			end
		else
			getgenv().AutoParry = true

			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local remotes = ReplicatedStorage:WaitForChild("Remotes", 15)
			local parryRemote = remotes:WaitForChild("ParryButtonPress", 15)
			workspace:WaitForChild("Balls", 15)

			local MIN_RADIUS = 18
			local MAX_RADIUS = 160
			local SPEED_DIVISOR = 1.7
			local MIN_SPEED = 5
			local PARRY_DELAY = 0.10
			local RunService = game:GetService("RunService")

			getgenv().ParryConnection = RunService.Heartbeat:Connect(function()
				if not getgenv().AutoParry then return end
				local character = player.Character
				if not character then return end
				local root = character:FindFirstChild("HumanoidRootPart")
				local humanoid = character:FindFirstChild("Humanoid")
				if not (root and humanoid and humanoid.Health > 0) then return end
				if not character:FindFirstChild("Highlight") then return end

				local BallsFolder = workspace:FindFirstChild("Balls")
				if not BallsFolder then return end
				local ball = nil
				for _, obj in ipairs(BallsFolder:GetChildren()) do
					if obj and obj:GetAttribute("realBall") then
						ball = obj
						break
					end
				end
				if not ball then return end

				local target = ball:GetAttribute("target")
				if not (target == player.Name or target == player.UserId) then return end

				local success, ballPos = pcall(function() return ball.Position end)
				if not success then return end

				local velocity = ball.AssemblyLinearVelocity
				local speed = velocity.Magnitude
				if speed < MIN_SPEED then return end

				local distance = (root.Position - ballPos).Magnitude
				local dynamicRadius = math.clamp((speed / SPEED_DIVISOR), MIN_RADIUS, MAX_RADIUS)

				if distance <= dynamicRadius then
					local now = tick()
					if now - getgenv().LastParry < PARRY_DELAY then return end

					local dirToPlayer = (root.Position - ballPos).Unit
					local ballDir = velocity.Unit
					if ballDir:Dot(dirToPlayer) < 0.30 then return end

					local currentFrame = workspace:GetServerTimeNow()
					if getgenv().LastParryFrame == currentFrame then return end
					getgenv().LastParryFrame = currentFrame

					task.spawn(function()
						pcall(function()
							parryRemote:FireServer()
						end)
						local vim = game:GetService("VirtualInputManager")
						vim:SendMouseButtonEvent(0, 0, 0, true, game, 0)
						task.wait(0.01)
						vim:SendMouseButtonEvent(0, 0, 0, false, game, 0)
					end)
					getgenv().LastParry = now
				end
			end)
		end
	end

	button.MouseButton1Click:Connect(toggleAutoParry)
end
coroutine.wrap(autoparryLogic)()

local function autospamToggleVisual()
	local button = Autospam
	local circle = button:WaitForChild("Circle")
	local enabled = false
	local ON_COLOR = Color3.fromRGB(244, 244, 244)
	local OFF_COLOR = Color3.fromRGB(15, 15, 15)
	circle.BackgroundColor3 = OFF_COLOR

	button.MouseButton1Click:Connect(function()
		enabled = not enabled
		circle.BackgroundColor3 = enabled and ON_COLOR or OFF_COLOR
	end)
end
coroutine.wrap(autospamToggleVisual)()

local function autospamLogic()
	local button = Autospam
	getgenv().AutoSpam = false
	getgenv().LastSpam = 0

	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local VirtualInputManager = game:GetService("VirtualInputManager")
	local player = Players.LocalPlayer

	-- Tenta encontrar o remote de clash/spam/dash
	local remotes = ReplicatedStorage:WaitForChild("Remotes", 15)
	local spamRemote = nil
	if remotes then
		for _, remote in pairs(remotes:GetChildren()) do
			local name = remote.Name:lower()
			if name:find("spam") or name:find("dash") or name:find("attack") or name:find("clash") or name:find("ability") then
				spamRemote = remote
				break
			end
		end
	end

	local SPAM_DELAY = 0.08  -- velocidade do spam
	local MAX_DISTANCE = 12  -- distância máxima pra considerar clash

	local SpamConnection = nil

	local function isInClash()
		local character = player.Character
		if not character then return false end
		local root = character:FindFirstChild("HumanoidRootPart")
		if not root then return false end

		-- Verifica se o jogador tem o Highlight (sinal claro de clash)
		if not character:FindFirstChild("Highlight") then return false end

		-- Procura o inimigo mais próximo com Highlight também
		for _, otherPlayer in ipairs(Players:GetPlayers()) do
			if otherPlayer ~= player and otherPlayer.Character then
				local otherRoot = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
				local otherHighlight = otherPlayer.Character:FindFirstChild("Highlight")
				if otherRoot and otherHighlight then
					local dist = (root.Position - otherRoot.Position).Magnitude
					if dist <= MAX_DISTANCE then
						return true
					end
				end
			end
		end
		return false
	end

	local function startAutoSpam()
		if SpamConnection then return end

		SpamConnection = RunService.Heartbeat:Connect(function()
			if not getgenv().AutoSpam then return end

			-- Só spamma se estiver realmente em clash
			if not isInClash() then return end

			local now = tick()
			if now - getgenv().LastSpam < SPAM_DELAY then return end

			getgenv().LastSpam = now

			task.spawn(function()
				if spamRemote then
					pcall(function()
						spamRemote:FireServer()
					end)
				end
				-- VIM como backup
				VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
				task.wait(0.01)
				VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
			end)
		end)
	end

	local function stopAutoSpam()
		if SpamConnection then
			SpamConnection:Disconnect()
			SpamConnection = nil
		end
	end

	button.MouseButton1Click:Connect(function()
		getgenv().AutoSpam = not getgenv().AutoSpam
		if getgenv().AutoSpam then
			startAutoSpam()
		else
			stopAutoSpam()
		end
	end)
end
coroutine.wrap(autospamLogic)()
