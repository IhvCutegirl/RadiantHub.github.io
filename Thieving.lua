local Thieving = {}

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
-- "Wood", "Blue", "Black", "Marble", "Steam Punk", "Tech", "Royal", "Purple Castle"
function Thieving:Auto_Thieving_Selected_Function(Passed_Auto_Thieving_Selected)
    for _, lockpick in ipairs(Passed_Auto_Thieving_Selected) do
        if lockpick == "Wood" then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            character.HumanoidRootPart.CFrame = CFrame.new(194,5,1)
            task.wait(2)
        end

        if lockpick == "Blue" then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            character.HumanoidRootPart.CFrame = CFrame.new(220,8,-8)
            task.wait(2)
        end

        if lockpick == "Black" then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            character.HumanoidRootPart.CFrame = CFrame.new(241,8,-13)
            task.wait(2)
        end

        if lockpick == "Marble" then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            character.HumanoidRootPart.CFrame = CFrame.new(273,10,-41)
            task.wait(2)
        end

        if lockpick == "Steam Punk" then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            character.HumanoidRootPart.CFrame = CFrame.new(295,10,-43)
            task.wait(2)
        end

        if lockpick == "Tech" then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            character.HumanoidRootPart.CFrame = CFrame.new(319,14,-21)
            task.wait(2)
        end

        if lockpick == "Royal" then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            character.HumanoidRootPart.CFrame = CFrame.new(336,14,-3)
            task.wait(2)
        end
        
        if lockpick == "Purple Castle" then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            character.HumanoidRootPart.CFrame = CFrame.new(350,19,37)
            task.wait(2)
        end

        if lockpick == "Hacker Stall" then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            character.HumanoidRootPart.CFrame = CFrame.new(303,22,62)
            task.wait(2)
        end
    end
end

return Thieving
