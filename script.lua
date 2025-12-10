local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Hz Script",
   Icon = 0,
   LoadingTitle = "Carregando",
   LoadingSubtitle = "by vera",
   ShowText = "Rayfield",
   Theme = "Default",
   ToggleUIKeybind = "K",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   }
})

local Tab = Window:CreateTab("Main", 4483362458)



local Toggle = Tab:CreateToggle({
    Name = "Auto Parry",
    CurrentValue = false,
    Flag = "AutoParryDynamicRadius",
    Callback = function(Value)
        getgenv().AutoParry = Value
        if getgenv().ParryConnection then
            getgenv().ParryConnection:Disconnect()
            getgenv().ParryConnection = nil
        end
        if not Value then
            warn("❌ Auto Parry DESLIGADO")
            return
        end
        warn("🔵 Auto Parry ATIVADO — FIXADO!")

        -- ✅ FIX: Espera carregar
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local remotes = ReplicatedStorage:WaitForChild("Remotes", 15)
        local parryRemote = remotes:WaitForChild("ParryButtonPress", 15)
        workspace:WaitForChild("Balls", 15)

        getgenv().LastParry = 0
        getgenv().LastParryFrame = 0

        -- ✅ FIX: Configs mais agressivas
        local MIN_RADIUS = 18      -- Maior
        local MAX_RADIUS = 160     -- Maior
        local SPEED_DIVISOR = 1.7  -- Raio maior
        local MIN_SPEED = 5        -- Menos restrito
        local PARRY_DELAY = 0.10   -- Rápido (era 0.22)

        local RunService = game:GetService("RunService")
        getgenv().ParryConnection = RunService.Heartbeat:Connect(function()
            if not getgenv().AutoParry then return end

            local player = game.Players.LocalPlayer
            local character = player.Character
            if not character then return end
            local root = character:FindFirstChild("HumanoidRootPart")
            local humanoid = character:FindFirstChild("Humanoid")
            if not (root and humanoid and humanoid.Health > 0) then return end

            -- ✅ FIX: Check highlight (backup pro target)
            if not character:FindFirstChild("Highlight") then return end

            local ball = nil
            local BallsFolder = workspace:FindFirstChild("Balls")
            if BallsFolder then
                for _, obj in ipairs(BallsFolder:GetChildren()) do
                    if obj and obj:GetAttribute("realBall") then
                        ball = obj
                        break
                    end
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
                if ballDir:Dot(dirToPlayer) < 0.30 then return end  -- Ligeiro aumento

                local currentFrame = workspace:GetServerTimeNow()
                if getgenv().LastParryFrame == currentFrame then return end
                getgenv().LastParryFrame = currentFrame

                -- ✅ FIX PRINCIPAL: REMOTE + VIM
                task.spawn(function()
                    pcall(function()
                        parryRemote:FireServer()  -- 🔥 CHAMADA DO SERVIDOR
                    end)
                    local vim = game:GetService("VirtualInputManager")
                    vim:SendMouseButtonEvent(0, 0, 0, true, game, 0)
                    task.wait(0.01)
                    vim:SendMouseButtonEvent(0, 0, 0, false, game, 0)
                end)

                getgenv().LastParry = now
                warn("💥 Parry FIX | Dist: " .. math.floor(distance) .. " | Speed: " .. math.floor(speed) .. " | Radius: " .. math.floor(dynamicRadius))
            end
        end)
    end,
})


Tab:CreateToggle({
    Name = "Visualizer",
    CurrentValue = false,
    Callback = function(state)
        if state then
            -- Criar o círculo
            local circle = Instance.new("Part")
            circle.Name = "ParryDebugCircle"
            circle.Shape = Enum.PartType.Ball
            circle.Material = Enum.Material.ForceField
            circle.Color = Color3.fromRGB(0, 255, 255)
            circle.Transparency = 0.7
            circle.CanCollide = false
            circle.Anchored = true
            circle.Size = Vector3.new(1, 1, 1)
            circle.Parent = workspace

            getgenv().DebugCircle = circle
            getgenv().DebugConnection = game:GetService("RunService").Heartbeat:Connect(function()
                local char = game.Players.LocalPlayer.Character
                if char and char:FindFirstChild("HumanoidRootPart") then
                    circle.CFrame = char.HumanoidRootPart.CFrame

                    -- Atualiza o tamanho do círculo com o raio dinâmico real
                    local ball = nil
                    for _, obj in workspace.Balls:GetChildren() do
                        if obj and obj:GetAttribute("realBall") then
                            ball = obj
                            break
                        end
                    end

                    if ball then
                        local speed = ball.AssemblyLinearVelocity.Magnitude
                        local radius = math.clamp(speed / 2.5, 12, 120)
                        circle.Size = Vector3.new(radius*2, radius*2, radius*2) -- diâmetro
                    else
                        circle.Size = Vector3.new(24, 24, 24) -- padrão quando não tem bola
                    end
                end
            end)

            warn("Círculo Debug ATIVADO")
        else
            -- Desativar e remover
            if getgenv().DebugCircle then
                getgenv().DebugCircle:Destroy()
                getgenv().DebugCircle = nil
            end
            if getgenv().DebugConnection then
                getgenv().DebugConnection:Disconnect()
                getgenv().DebugConnection = nil
            end
            warn("Círculo Debug DESATIVADO")
        end
    end
})
