
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

-- PASSO 2: Equ