local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.Character or game.Players.LocalPlayer
Sound.SoundId = "rbxassetid://" .. tostring(args[2]) -- Usa o mesmo ID que foi enviado
Sound.Volume = 1
Sound:Play()