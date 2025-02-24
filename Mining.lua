local Mining = {}

function Mining:Auto_Mine_Selected_Ores(Passed_Auto_Mine_Selected)
    for _, ore in ipairs(Passed_Auto_Mine_Selected) do
        if ore == "Dirt Ore" then
            local args = {
                [1] = 6 --for dirt ore 5 for stone ore 3 for copper ore 2 for iron ore 1 for gold ore 4 for emerald ore 9 and 10 for purple ore 7 and 8 for diamond ore 11 for lava ore
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
        end
        if ore == "Stone Ore" then
            local args = {
                [1] = 5
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
        end
        if ore == "Copper Ore" then
            local args = {
                [1] = 3
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
        end
        if ore == "Iron Ore" then
            local args = {
                [1] = 2
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
        end
        if ore == "Gold Ore" then
            local args = {
                [1] = 1
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
        end
        if ore == "Emerald Ore" then
            local args = {
                [1] = 4
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
        end
        if ore == "Obsidian Ore" then
            local args = {
                [1] = 9
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
            local args = {
                [1] = 10
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
        end
        if ore == "Diamond Ore" then
            local args = {
                [1] = 7
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
            local args = {
                [1] = 8
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
        end
        if ore == "Lava Ore" then
            local args = {
                [1] = 11
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mining_Attack"):InvokeServer(unpack(args))
        end
    end
end

return Mining
