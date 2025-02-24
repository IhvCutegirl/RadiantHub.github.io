local Thieving = {}
-- "Wood", "Blue", "Black", "Marble", "Steam Punk", "Tech", "Royal", "Purple Castle"
function Thieving:Auto_Thieving_Selected_Function(Passed_Auto_Thieving_Selected)
    for _, lockpick in ipairs(Passed_Auto_Thieving_Selected) do
        if lockpick == "Wood" then
            local args = {
                [1] = 4820
            }   
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Blue" then
            local args = {
                [1] = 4822
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))            
        end
        if lockpick == "Black" then
            local args = {
                [1] = 4823
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Marble" then
            local args = {
                [1] = 4819
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Steam Punk" then
            local args = {
                [1] = 4817
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Tech" then
            local args = {
                [1] = 4821
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Royal" then
            local args = {
                [1] = 4824
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Purple Castle" then
            local args = {
                [1] = 4818
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
    end
end

return Thieving
