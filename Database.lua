
-- Serviços
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local lp = Players.LocalPlayer
local targetName = "Eu_malupink600"

-- REMOTES
local RE = ReplicatedStorage:WaitForChild("RE")
local ToolRemote = RE:WaitForChild("1Too1l")
local ClearRemote = RE:WaitForChild("1Clea1rTool1s")

-- Salvar posição original
local originalPos = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character.HumanoidRootPart.CFrame

-- PASSO 1: Pegar o sofá
ToolRemote:InvokeServer("PickingTools", "Couch")
wait(0.5)

-- PASSO 2: Equipar sofá
local tool = lp.Backpack:FindFirstChild("Couch") or lp.Character:FindFirstChild("Couch")
if tool then
    lp.Character.Humanoid:EquipTool(tool)
else
    warn("[-] Sofá não encontrado")
    return
end

-- PASSO 3: Teleportar para o peito do jogador
local function teleportToChest()
    local target = Players:FindFirstChild(targetName)
    local myHRP = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
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

-- PAS