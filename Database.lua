return [[
end

-- PASSO 6: Levar o jogador para o void
if target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
    target.Character.HumanoidRootPart.CFrame = CFrame.new(0, -50000, 0)
end

-- PASSO 7: Espera 3 segundos
task.wait(3)

-- PASSO 8: Limpar o inventário
local args = {
    [1] = "ClearAllTools";
}
game:GetService("ReplicatedStorage"):WaitForChild("RE", 9e9):WaitForChild("1Clea1rTool1s", 9e9):FireServer(unpack(args))

-- PASSO 9: Voltar posição original
if originalPos then
    lp.Character:FindFirstChild("HumanoidRootPart").CFrame = originalPos
end
]]