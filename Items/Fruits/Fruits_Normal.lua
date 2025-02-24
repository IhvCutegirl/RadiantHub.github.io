local Fruits_Normal = {}

function  Fruits_Normal:Use_Fruits_Normal()
    --Apple
    local args = {
        [1] = "aecea8d839b24205b9d56c3e500bae35",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

    --banana
    local args = {
        [1] = "fa7cc26012264a82b24d825b3dc5db2a",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

    --orange
    local args = {
        [1] = "27ae2333b10748bc8f8ed8fe19f8c750",
        [2] = 1
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

    --pineapple
    local args = {
        [1] = "75ff5ee57ffb4f2c8223317941e9245c",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

    --watermelon
    local args = {
        [1] = "421d838fcac84cd88bbce3772f68e3c0",
        [2] = 1
    }    
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

    --rainbow
    local args = {
        [1] = "421d838fcac84cd88bbce3772f68e3c0",
        [2] = 1
    }   
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Fruits: Consume"):InvokeServer(unpack(args))
    task.wait()

end

return Fruits_Normal
