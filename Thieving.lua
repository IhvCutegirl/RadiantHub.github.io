local Thieving = {}
-- "Wood", "Blue", "Black", "Marble", "Steam Punk", "Tech", "Royal", "Purple Castle"
function Thieving:Auto_Thieving_Selected_Function(Passed_Auto_Thieving_Selected)
    for _, lockpick in ipairs(Passed_Auto_Thieving_Selected) do
        print(lockpick)
        if lockpick == "Wood" then
            local args = {
                [1] = 1388
            }   
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Blue" then
            local args = {
                [1] = 1390
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))            
        end
        if lockpick == "Black" then
            local args = {
                [1] = 1392
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Marble" then
            local args = {
                [1] = 1387
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Steam Punk" then
            local args = {
                [1] = 1386
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Tech" then
            local args = {
                [1] = 1389
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Royal" then
            local args = {
                [1] = 1391
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
        if lockpick == "Purple Castle" then
            local args = {
                [1] = 1385
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Thieving_Thieve"):InvokeServer(unpack(args))
        end
    end
end

return Thieving
