local library = {}

library:CreateWindow("Ok")

function library:CreateWindow(name)
    local Design = Instance.new("ScreenGui")
    local TopMain = Instance.new("ImageLabel")
    local Container = Instance.new("ImageLabel")
    local UIGridLayout = Instance.new("UIGridLayout")
    local Title = Instance.new("TextBox")

    UIGridLayout.Parent = Container
    UIGridLayout.CellSize = UDim2.new(0, 350, 0, 25)
    UIGridLayout.StartCorner = Enum.StartCorner.BottomLeft

    Title.Name = "Title"
    Title.Parent = TopMain
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.0228571426, 0, 0, 0)
    Title.Size = UDim2.new(0, 216, 0, 20)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "Label"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 20.000
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.TextYAlignment = Enum.TextYAlignment.Bottom
    Title.Text = name

    Design.Name = "Design"
    Design.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
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

    local EpicLibrary = {}

    function EpicLibrary:CreateButton(text)
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
    end
    return EpicLibrary
end

return library
