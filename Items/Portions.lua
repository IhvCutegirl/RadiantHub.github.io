local Portions = {}

function Portions:Portions_All()
    -- lucky 1
    local args = {
        [1] = "bf3aa598bfb8411aaaad285563ddac89",
        [2] = 1
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    -- coins 1
    local args = {
        [1] = "fdabee663a6a4057aec3ef3312afbe2e",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    -- lucky 2
    local args = {
        [1] = "d732ddad7e9f45cda44e4732fd2a9891",
        [2] = 1
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    -- fast roll 1
    local args = {
        [1] = "670e4310045e4cb5a00043810e28a529",
        [2] = 1
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --breakables 2
    local args = {
        [1] = "2639bedf0b5f4e1190101d6617e869c2",
        [2] = 1
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --lucky 3
    local args = {
        [1] = "c9d0193f3be74e4e9428f57500e3c137",
        [2] = 1
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --items 3
    local args = {
        [1] = "a70a1a8326f34a9096912ff44c829ea9",
        [2] = 1
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --items 4
    local args = {
        [1] = "571a28fa39f24c4e9e48797102de2612",
        [2] = 1
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()  

    --faster rolls 2
    local args = {
        [1] = "7e86a8ee649045d780bd2cbe33b8212b",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --faster rolls 3
    local args = {
        [1] = "7b55e7c93a6640c0bdf513d28f814e5a",
        [2] = 1
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --lucky 5
    local args = {
        [1] = "61cba64f9f9c4d1e8a99af02cd13b6de",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --coins 5
    local args = {
        [1] = "8b311950dbad46bab2ac76a05c353e4f",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --lucky 6
    local args = {
        [1] = "ea250dc59e2a48398c1746f1c91870df",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --coins 6
    local args = {
        [1] = "9c2ef8ae83b748c58fcee6ee2e478eca",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --lucky 7
    local args = {
        [1] = "1958c64e003d4409bfa706ac361a2a7b",
        [2] = 1
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --cocktail
    local args = {
        [1] = "1e513a232e9847f8b0a36cb58b8bf30a",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()

    --Golden Dice Portion
    local args = {
        [1] = "5dd9c3ea9a6d4b7fb5395b93b7231f15",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()
    
    --raidnbow dice portion
    local args = {
        [1] = "a29c70e4d50841ef9b6e03fe675d8ba9",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()
    
    --balzing dice portion
    local args = {
        [1] = "bfbc224578a447c0ac727818326f279e",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Consumables_Consume"):InvokeServer(unpack(args))
    task.wait()    

end

return Portions
