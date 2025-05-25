--settings:
local title = "Loading Script!" --upper title
local loading_text = "Game Detected: 'Grow A Garden'" --gray title
local loadingtime = 300 --loading time (in seconds)

--credits to saint !
-- do not touch/edit anything below! unless you know how to code ;)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local name = Instance.new("TextLabel")
local loadingtext = Instance.new("TextLabel")
local Dots = Instance.new("Frame")
local Dot1 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local InsideDot = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Dot2 = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local InsideDot_2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Dot3 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local InsideDot_3 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local seperator = Instance.new("Frame")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999999999
ScreenGui.IgnoreGuiInset = true

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame.BackgroundTransparency = 0
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.LayoutOrder = 2
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(1, 0, 1, 0) -- Ocupa toda la pantalla

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0, 0) -- alineado arriba izquierda
Frame_2.Size = UDim2.new(1, 0, 1, 0) -- ocupa todo el Frame padre

UICorner.Parent = Frame_2

name.Name = "name"
name.Parent = Frame_2
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.BorderColor3 = Color3.fromRGB(0, 0, 0)
name.BorderSizePixel = 0
name.Position = UDim2.new(0, 0, 0.10, 0) -- un poco más abajo para no estar pegado arriba
name.Size = UDim2.new(1, 0, 0.15, 0)  -- aumentado el alto para texto más grande
name.Font = Enum.Font.FredokaOne
name.Text = title
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextScaled = true
name.TextSize = 30.000  -- tamaño aumentado
name.TextWrapped = true

loadingtext.Name = "loadingtext"
loadingtext.Parent = Frame_2
loadingtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadingtext.BackgroundTransparency = 1.000
loadingtext.BorderColor3 = Color3.fromRGB(0, 0, 0)
loadingtext.BorderSizePixel = 0
loadingtext.Position = UDim2.new(0, 0, 0.25, 0) -- más abajo que el título
loadingtext.Size = UDim2.new(1, 0, 0.10, 0)  -- ancho completo, altura suficiente
loadingtext.Font = Enum.Font.FredokaOne
loadingtext.Text = loading_text
loadingtext.TextColor3 = Color3.fromRGB(97, 97, 97)
loadingtext.TextScaled = true
loadingtext.TextSize = 24.000 -- tamaño aumentado
loadingtext.TextWrapped = true

Dots.Name = "Dots"
Dots.Parent = Frame_2
Dots.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dots.BackgroundTransparency = 1.000
Dots.BorderColor3 = Color3.fromRGB(27, 42, 53)
Dots.Position = UDim2.new(0.4, 0, 0.35, 0)
Dots.Size = UDim2.new(0.2, 0, 0.1, 0)

Dot1.Name = "Dot1"
Dot1.Parent = Dots
Dot1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot1.BorderColor3 = Color3.fromRGB(27, 42, 53)
Dot1.Position = UDim2.new(0, 0, 0.25, 0)
Dot1.Size = UDim2.new(0.3, 0, 0.5, 0)

UICorner_2.CornerRadius = UDim.new(0.5, 0)
UICorner_2.Parent = Dot1

InsideDot.Name = "InsideDot"
InsideDot.Parent = Dot1
InsideDot.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot.BorderColor3 = Color3.fromRGB(27, 42, 53)
InsideDot.Position = UDim2.new(0.5, 0, 0.5, 0)
InsideDot.Size = UDim2.new(0, 0, 0, 0)

UICorner_3.CornerRadius = UDim.new(0.5, 0)
UICorner_3.Parent = InsideDot

Dot2.Name = "Dot2"
Dot2.Parent = Dots
Dot2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Dot2.Position = UDim2.new(0.35, 0, 0.25, 0)
Dot2.Size = UDim2.new(0.3, 0, 0.5, 0)

UICorner_4.CornerRadius = UDim.new(0.5, 0)
UICorner_4.Parent = Dot2

InsideDot_2.Name = "InsideDot"
InsideDot_2.Parent = Dot2
InsideDot_2.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
InsideDot_2.Position = UDim2.new(0.5, 0, 0.5, 0)
InsideDot_2.Size = UDim2.new(0, 0, 0, 0)

UICorner_5.CornerRadius = UDim.new(0.5, 0)
UICorner_5.Parent = InsideDot_2

Dot3.Name = "Dot3"
Dot3.Parent = Dots
Dot3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Dot3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Dot3.Position = UDim2.new(0.7, 0, 0.25, 0)
Dot3.Size = UDim2.new(0.3, 0, 0.5, 0)

UICorner_6.CornerRadius = UDim.new(0.5, 0)
UICorner_6.Parent = Dot3

InsideDot_3.Name = "InsideDot"
InsideDot_3.Parent = Dot3
InsideDot_3.AnchorPoint = Vector2.new(0.5, 0.5)
InsideDot_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InsideDot_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
InsideDot_3.Position = UDim2.new(0.5, 0, 0.5, 0)
InsideDot_3.Size = UDim2.new(0, 0, 0, 0)

UICorner_7.CornerRadius = UDim.new(0.5, 0)
UICorner_7.Parent = InsideDot_3

seperator.Name = "seperator"
seperator.Parent = Frame_2
seperator.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
seperator.BorderColor3 = Color3.fromRGB(0, 0, 0)
seperator.BorderSizePixel = 0
seperator.Position = UDim2.new(0, 0, 0.33, 0)
seperator.Size = UDim2.new(1, 0, 0.02, 0)  -- línea ocupa todo el ancho

-- Scripts:

local function animateDots()
	while true do
		wait(0.25)
		Dot1.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
		wait(0.25)
		Dot2.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
		wait(0.25)
		Dot3.InsideDot:TweenSize(UDim2.new(1,0,1,0), "In", "Sine", 0.25, true)
		wait(0.25)
		Dot1.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
		wait(0.25)
		Dot2.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
		wait(0.25)
		Dot3.InsideDot:TweenSize(UDim2.new(0,0,0,0), "In", "Sine", 0.25, true)
	end
end

coroutine.wrap(animateDots)()

wait(loadingtime)

ScreenGui:Destroy()
