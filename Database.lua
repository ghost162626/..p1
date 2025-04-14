SO 6: Levar o jogador para o void de baixo (mudei a altura para um valor bem negativo para o void)
if target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
    target.Character.HumanoidRootPart.CFrame = CFrame.new(0, -50000, 0)  -- Altura bem negativa para garantir que ele vá para o void
end

-- PASSO 7: Espera 3 segundos antes de o jogador cair e você voltar
task.wait(3)

-- PASSO 8: Limpar o inventário (remover sofá)
local args = {
    [1] = "ClearAllTools";
}
game:GetService("ReplicatedStorage"):WaitForChild("RE", 9e9):WaitForChild("1Clea1rTool1s", 9e9):FireServer(unpack(args))

-- PASSO 9: Voltar você para a posição original
if originalPos then
    lp.Character:FindFirstChild("HumanoidRootPart").CFrame = originalPos
end