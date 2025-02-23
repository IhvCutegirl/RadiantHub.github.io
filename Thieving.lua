local Thieving = {}
-- "Wood", "Blue", "Black", "Marble", "Steam Punk", "Tech", "Royal", "Purple Castle"
function Thieving:Auto_Thieving_Selected_Function(Passed_Auto_Thieving_Selected)
    for _, lockpick in ipairs(Passed_Auto_Thieving_Selected) do
        if lockpick == "Wood" then
            local args = {
                [1] = 1355
            }   
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Blue" then
            local args = {
                [1] = 1353
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))            
        end
        if lockpick == "Black" then
            local args = {
                [1] = 1359
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Marble" then
            local args = {
                [1] = 1356
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Steam Punk" then
            local args = {
                [1] = 1358
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Tech" then
            local args = {
                [1] = 1357
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Royal" then
            local args = {
                [1] = 1354
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Purple Castle" then
            local args = {
                [1] = 1360
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
    end
    print("Mutlidropdown changed:", table.concat(Passed_Auto_Thieving_Selected, ", "))
end

return Thieving
