return [[
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
]]