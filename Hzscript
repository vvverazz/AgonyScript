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

---------------------------------------------------------------------
-- AUTO PARRY BASEADO EM VELOCIDADE
---------------------------------------------------------------------

local Toggle = Tab:CreateToggle({
    Name = "Auto Parry (Raio Dinâmico por Velocidade)",
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

        warn("🔵 Auto Parry ATIVADO — Raio baseado na velocidade da bola!")

        getgenv().LastParry = 0
        getgenv().LastParryFrame = 0

        ------------------------------------------------------------------
        -- CONFIGURAÇÃO DO RAIO DINÂMICO
        ------------------------------------------------------------------
        local MIN_RADIUS = 12
        local MAX_RADIUS = 120
        local SPEED_DIVISOR = 2.5

        local MIN_SPEED = 8
        local PARRY_DELAY = 0.22

        ------------------------------------------------------------------
        -- LOOP PRINCIPAL
        ------------------------------------------------------------------
        local RunService = game:GetService("RunService")
        getgenv().ParryConnection = RunService.Heartbeat:Connect(function()

            if not getgenv().AutoParry then return end

            ------------------------------------------------------------------
            -- VALIDAÇÕES
            ------------------------------------------------------------------
            local player = game.Players.LocalPlayer
            local character = player.Character
            if not character then return end

            local root = character:FindFirstChild("HumanoidRootPart")
            local humanoid = character:FindFirstChild("Humanoid")
            if not (root and humanoid and humanoid.Health > 0) then return end

            ------------------------------------------------------------------
            -- ACHAR A BOLA REAL
            ------------------------------------------------------------------
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

            -- Garantir que é pra você
            local target = ball:GetAttribute("target")
            if not (target == player.Name or target == player.UserId) then return end

            ------------------------------------------------------------------
            -- Coletar velocidade e distância
            ------------------------------------------------------------------
            local success, ballPos = pcall(function() return ball.Position end)
            if not success then return end

            local velocity = ball.AssemblyLinearVelocity
            local speed = velocity.Magnitude

            if speed < MIN_SPEED then return end

            local distance = (root.Position - ballPos).Magnitude

            ------------------------------------------------------------------
            -- CÁLCULO DO RAIO
            ------------------------------------------------------------------
            local dynamicRadius = math.clamp(
                (speed / SPEED_DIVISOR),
                MIN_RADIUS,
                MAX_RADIUS
            )

            ------------------------------------------------------------------
            -- VERIFICAR SE A BOLA ENTROU NO RAIO (COM ANTI-DOUBLE-CLICK)
            ------------------------------------------------------------------
            if distance <= dynamicRadius then

                local now = tick()

                -- 🔒 Trava 1: cooldown real
                if now - getgenv().LastParry < PARRY_DELAY then
                    return
                end

                -- 🔒 Trava 2: bola deve estar vindo
                local dirToPlayer = (root.Position - ballPos).Unit
                local ballDir = velocity.Unit

                local approaching = ballDir:Dot(dirToPlayer) > 0.25
                if not approaching then
                    return
                end

                -- 🔒 Trava 3: evitar duplo clique no mesmo frame
                local currentFrame = workspace:GetServerTimeNow()
                if getgenv().LastParryFrame == currentFrame then
                    return
                end
                getgenv().LastParryFrame = currentFrame

                -----------------------
                -- Parry Final Seguro
                -----------------------
                task.spawn(function()
                    local vim = game:GetService("VirtualInputManager")
                    vim:SendMouseButtonEvent(0, 0, 0, true, game, 0)
                    task.wait(0.01)
                    vim:SendMouseButtonEvent(0, 0, 0, false, game, 0)
                end)

                getgenv().LastParry = now

                warn("💥 Parry | Dist: " .. math.floor(distance) ..
                     " | Speed: " .. math.floor(speed) ..
                     " | Radius: " .. math.floor(dynamicRadius))
            end
        end)
    end,
})
