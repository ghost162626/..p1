
loadstring(game:HttpGet("https://raw.githubusercontent.com/Darkmoonxhubscript/DarkLibV2/refs/heads/main/Source.luau"))()

-- Lista de usuários permitidos
local whiteList = {
    ["ghost_33828936"] = true,
    ["2"] = true,
    ["3"] = true
}

-- Pegando o jogador local
local player = game.Players.LocalPlayer
local playerName = player.Name

-- Criando a janela
local Window = MakeWindow({Title = ">| White list |<"})

-- Adicionando o botão de minimizar
AddMinimizeButton({
    Icon = "10734897102"
})

-- Notificação de carregamento do script
local Notify = NewNotify({
    Title = "Notification",
    Description = "White list !!!",
    Time = 3
})

-- Criando as abas
local Tab1 = NewTab({Name = "✍️White list✍️", Icon = "10723407389"})

-- Aba Universal (Tab1)
local TextLabel1 = AddTextLabel(Tab1, {
    Name = "sistema White List"
})

-- Verificação da whitelist
local isWhitelisted = whiteList[playerName]

-- Mensagem de status
local statusMsg
if isWhitelisted then
    statusMsg = AddTextLabel(Tab1, {
        Name = "VOCE ESTA NA WHITE LIST :)",
        TextColor = Color3.fromRGB(0, 255, 0)
    })
else
    statusMsg = AddTextLabel(Tab1, {
        Name = "VOCE NAO ESTA NA WHITE LIST
ENTRE EM CONTATO COM @ghost55kk",
        TextColor = Color3.fromRGB(255, 0, 0)
    })
end

-- Botão com ação
local Button1 = AddButton(Tab1, {
    Name = "Verificar White list",
    Callback = function()
        if isWhitelisted then
            NewNotify({
                Title = "ACESSO PERMITIDO",
                Description = "Você está na white list!",
                Time = 3
            })

            -- Executar o script externo
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ghost162626/..p1/refs/heads/main/Script"))()
        else
            NewNotify({
                Title = "ACESSO NEGADO",
                Description = "Você NÃO está na white list!
Contato: @ghost55kk",
                Time = 5
            })
        end
    end
})
