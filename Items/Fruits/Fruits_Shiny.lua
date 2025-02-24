local Fruits_Shiny = {}

function Fruits_Shiny:Use_Fruits_Shiny()
    -- apple
    local args = {
        [1] = "c9b25ab24a3c4bedb8b8714425d2028a",
        [2] = 1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

    --banana
    local args = {
        [1] = "c15b5c1a08a64006a87f52a0a8cfb2b2",
        [2] = 1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

    --orange
    local args = {
        [1] = "6fb45b3dc399475aaac339f525169f45",
        [2] = 1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

    --pineapple
    local args = {
        [1] = "a7b29cb6e82246dd8bf4a1c5f5e934ca",
        [2] = 1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

    --watermelon
    local args = {
        [1] = "18007f75d79a4b809e13ce1d8fe6c1b2",
        [2] = 1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

end

return Fruits_Shiny
