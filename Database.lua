return [[
stChild("HumanoidRootPart")
    local targetHRP = target and target.Character and target.Character:FindFirstChild("HumanoidRootPart")
    if myHRP and targetHRP then
        myHRP.CFrame = targetHRP.CFrame * CFrame.new(0, 1.3, 0)
    end
end

-- PASSO 4: Verificar se o jogador está sentado
local function isPlayerSitting(player)
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    return humanoid and humanoid.Sit
end

-- Loop até o jogador sentar
local target = Players:FindFirstChild(targetName)
if not target then
    warn("[-] Alvo não encontrado")
    return
end

repeat
    teleportToChest()
    task.wait(0.1)
until isPlayerSitting(target)

-- PASSO 5: Prevenir que você morra - Mover seu personagem para uma posição segura
local myHRP = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
if myHRP then
    myHRP.CFrame = CFrame.new(0, 0, 0)
end

-- PASSO 6: Levar o jogador para o void
if target.Character and target.Character:FindF
]]