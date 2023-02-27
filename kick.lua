if not game:IsLoaded() then
    local Loaded = Instance.new("Message",workspace)
    Loaded.Text = 'Wait Game Loading'
    game.Loaded:Wait()
    Loaded:Destroy()
    wait(10)
end

join = game.Players.localPlayer.Neutral == false
if (shared.Team == "Pirates" or shared.Team == "Marines") and not join then
    repeat wait()
        pcall(function()
            join = game.Players.localPlayer.Neutral == false
            if shared.Team == "Pirates" then
                for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
                        v.Function()
                    end
                end
            elseif shared.Team == "Marines" then
                for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
                        v.Function()
                    end
                end
            else
                for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
                        v.Function()
                    end
                end
            end
        end)
    until join == true and game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 
end

