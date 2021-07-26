local library = {}

local toggled = false

function library:CreateWindow(name)
    local Design = Instance.new("ScreenGui")
    local TopMain = Instance.new("ImageLabel")
    local Container = Instance.new("ImageLabel")
    local UIGridLayout = Instance.new("UIGridLayout")
    local Title = Instance.new("TextBox")
    local ToggleVisible = Instance.new("TextButton")
    local TextButton_Roundify_5px = Instance.new("ImageLabel")

    UIGridLayout.Parent = Container
    UIGridLayout.CellSize = UDim2.new(0, 350, 0, -25)
    UIGridLayout.StartCorner = Enum.StartCorner.BottomLeft

    Title.Name = "Title"
    Title.Parent = TopMain
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.0228571426, 0, 0, 0)
    Title.Size = UDim2.new(0, 216, 0, 20)
    Title.Font = Enum.Font.GothamBold
    Title.Text = name
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 20.000
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.TextYAlignment = Enum.TextYAlignment.Bottom
    Title.ClearTextOnFocus = false
    Title.Selectable = false
    Title.TextEditable = false

    Design.Name = "Design"
    Design.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    Design.ResetOnSpawn = false
    
    TopMain.Name = "TopMain"
    TopMain.Parent = Design
    TopMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopMain.BackgroundTransparency = 1.000
    TopMain.Position = UDim2.new(0.361999989, 0, 0.234139919, 0)
    TopMain.Size = UDim2.new(0, 350, 0, 32)
    TopMain.Image = "rbxassetid://3570695787"
    TopMain.ImageColor3 = Color3.fromRGB(53, 53, 53)
    TopMain.ScaleType = Enum.ScaleType.Slice
    TopMain.SliceCenter = Rect.new(100, 100, 100, 100)
    TopMain.SliceScale = 0.050
    
    Container.Name = "Container"
    Container.Parent = TopMain
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BackgroundTransparency = 1.000
    Container.Position = UDim2.new(-0.000435709953, 0, 0.636952341, 0)
    Container.Size = UDim2.new(0, 350, 0, 350)
    Container.Image = "rbxassetid://3570695787"
    Container.ImageColor3 = Color3.fromRGB(43, 43, 43)
    Container.ScaleType = Enum.ScaleType.Slice
    Container.SliceCenter = Rect.new(100, 100, 100, 100)
    Container.SliceScale = 0.050
    Container.ClipDescendats = true

    ToggleVisible.Name = "ToggleVisible"
    ToggleVisible.Parent = game.ReplicatedStorage
    ToggleVisible.BackgroundColor3 = Color3.fromRGB(235, 241, 203)
    ToggleVisible.BackgroundTransparency = 1.000
    ToggleVisible.BorderSizePixel = 0
    ToggleVisible.Position = UDim2.new(0.928571463, 0, 0.0508928299, 0)
    ToggleVisible.Size = UDim2.new(0, 18, 0, 18)
    ToggleVisible.Font = Enum.Font.GothamSemibold
    ToggleVisible.Text = ""
    ToggleVisible.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleVisible.TextSize = 14.000
    ToggleVisible.MouseButton1Down:Connect(function()
        if toggled then
            toggled = false
            Container:TweenSize(UDim2.new(0, 350,0, 9), "InOut", "Linear", 0.3)
        else
            toggled = true
            Container:TweenSize(UDim2.new(0, 350,0, 350), "InOut", "Linear", 0.3)
        end
    end)
    
    TextButton_Roundify_5px.Name = "TextButton_Roundify_5px"
    TextButton_Roundify_5px.Parent = ToggleVisible
    TextButton_Roundify_5px.Active = true
    TextButton_Roundify_5px.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_Roundify_5px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_Roundify_5px.BackgroundTransparency = 1.000
    TextButton_Roundify_5px.Position = UDim2.new(0.833333373, 0, 0.5, 0)
    TextButton_Roundify_5px.Selectable = true
    TextButton_Roundify_5px.Size = UDim2.new(1, 0, 1, 0)
    TextButton_Roundify_5px.Image = "rbxassetid://3570695787"
    TextButton_Roundify_5px.ImageColor3 = Color3.fromRGB(235, 241, 203)
    TextButton_Roundify_5px.ScaleType = Enum.ScaleType.Slice
    TextButton_Roundify_5px.SliceCenter = Rect.new(100, 100, 100, 100)
    TextButton_Roundify_5px.SliceScale = 0.050

    local EpicLibrary = {}

    function EpicLibrary:CreateButton(text, callback)
        local callback = callback or function() end

        local TextButton = Instance.new("TextButton")

        TextButton.Parent = Container
        TextButton.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.102857143, 0, -0.0428571403, 0)
        TextButton.Size = UDim2.new(0, 200, 0, 50)
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 14.000
        TextButton.Text = text

        TextButton.MouseButton1Down:Connect(function()
            pcall(callback)
        end)
    end
    return EpicLibrary
end
