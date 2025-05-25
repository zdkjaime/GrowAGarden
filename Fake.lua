-- Pantalla de carga completa con nombre y mensaje final
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

local player = Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "CustomLoadingScreen"
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false

-- Fondo negro
local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.Position = UDim2.new(0, 0, 0, 0)
background.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
background.Parent = screenGui

-- Figurita decorativa
local decorative = Instance.new("ImageLabel")
decorative.Size = UDim2.new(0.1, 0, 0.1, 0)
decorative.Position = UDim2.new(0.45, 0, 0.25, 0)
decorative.BackgroundTransparency = 1
decorative.Image = "rbxassetid://7072718369"
decorative.ImageColor3 = Color3.fromRGB(0, 170, 255)
decorative.Parent = background

spawn(function()
	while screenGui.Parent do
		for i = 0, 360, 5 do
			decorative.Rotation = i
			wait(0.01)
		end
	end
end)

-- Texto "Loading..."
local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(0.6, 0, 0.1, 0)
loadingText.Position = UDim2.new(0.2, 0, 0.4, 0)
loadingText.BackgroundTransparency = 1
loadingText.Text = "Loading..."
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.TextScaled = true
loadingText.Font = Enum.Font.GothamSemibold
loadingText.Parent = background

-- Barra exterior
local barFrame = Instance.new("Frame")
barFrame.Size = UDim2.new(0.6, 0, 0.02, 0)
barFrame.Position = UDim2.new(0.2, 0, 0.55, 0)
barFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
barFrame.BorderSizePixel = 0
barFrame.Parent = background

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = barFrame

-- Barra interior
local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(0, 0, 1, 0)
progressBar.Position = UDim2.new(0, 0, 0, 0)
progressBar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
progressBar.BorderSizePixel = 0
progressBar.Parent = barFrame

local barCorner = Instance.new("UICorner")
barCorner.CornerRadius = UDim.new(0, 10)
barCorner.Parent = progressBar

-- Gradiente animado
local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255,255,255)),
	ColorSequenceKeypoint.new(0.50, Color3.fromRGB(200,200,200)),
	ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255,255,255))
}
gradient.Rotation = 0
gradient.Parent = progressBar

spawn(function()
	while true do
		for i = 0, 360, 1 do
			gradient.Rotation = i
			wait(0.01)
		end
	end
end)

-- Blur inicial
local blur = Instance.new("BlurEffect")
blur.Size = 0
blur.Parent = Lighting

TweenService:Create(blur, TweenInfo.new(0.5), { Size = 24 }):Play()

-- Barra de carga más lenta
TweenService:Create(progressBar, TweenInfo.new(200, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
	Size = UDim2.new(1, 0, 1, 0)
}):Play()

-- AL TERMINAR LA CARGA
task.delay(7, function()
	local fadeOut = TweenInfo.new(1)
	TweenService:Create(background, fadeOut, { BackgroundTransparency = 1 }):Play()
	TweenService:Create(loadingText, fadeOut, { TextTransparency = 1 }):Play()
	TweenService:Create(barFrame, fadeOut, { BackgroundTransparency = 1 }):Play()
	TweenService:Create(progressBar, fadeOut, { BackgroundTransparency = 1 }):Play()
	TweenService:Create(decorative, fadeOut, { ImageTransparency = 1 }):Play()

	wait(1)
	barFrame:Destroy()
	progressBar:Destroy()
	loadingText:Destroy()
	decorative:Destroy()

	-- Segundo Blur
	local nameBlur = Instance.new("BlurEffect")
	nameBlur.Size = 0
	nameBlur.Parent = Lighting
	TweenService:Create(nameBlur, TweenInfo.new(0.5), { Size = 20 }):Play()

	-- INTERFAZ DE NOMBRE
	local namePrompt = Instance.new("Frame")
	namePrompt.Size = UDim2.new(0.5, 0, 0.5, 0)
	namePrompt.Position = UDim2.new(0.25, 0, 0.25, 0)
	namePrompt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	namePrompt.BorderColor3 = Color3.fromRGB(0, 170, 255)
	namePrompt.BorderSizePixel = 2
	namePrompt.Parent = background

	local nameUICorner = Instance.new("UICorner")
	nameUICorner.CornerRadius = UDim.new(0.05, 0)
	nameUICorner.Parent = namePrompt

	local title = Instance.new("TextLabel")
	title.Size = UDim2.new(1, 0, 0.2, 0)
	title.Position = UDim2.new(0, 0, 0, 0)
	title.BackgroundTransparency = 1
	title.Text = "What's your name?"
	title.Font = Enum.Font.GothamSemibold
	title.TextColor3 = Color3.fromRGB(0, 170, 255)
	title.TextScaled = true
	title.Parent = namePrompt

	local input = Instance.new("TextBox")
	input.Size = UDim2.new(0.85, 0, 0.25, 0)
	input.Position = UDim2.new(0.075, 0, 0.3, 0)
	input.Text = ""
	input.Font = Enum.Font.GothamSemibold
	input.TextColor3 = Color3.new(1, 1, 1)
	input.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	input.ClearTextOnFocus = true
	input.TextScaled = true
	input.Parent = namePrompt

	local inputCorner = Instance.new("UICorner")
	inputCorner.CornerRadius = UDim.new(0.1, 0)
	inputCorner.Parent = input

	local submit = Instance.new("TextButton")
	submit.Size = UDim2.new(0.6, 0, 0.2, 0)
	submit.Position = UDim2.new(0.2, 0, 0.65, 0)
	submit.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
	submit.Text = "Submit"
	submit.Font = Enum.Font.GothamSemibold
	submit.TextColor3 = Color3.new(1, 1, 1)
	submit.TextScaled = true
	submit.Parent = namePrompt

	local submitCorner = Instance.new("UICorner")
	submitCorner.CornerRadius = UDim.new(0.1, 0)
	submitCorner.Parent = submit

	-- AL ENVIAR NOMBRE
	submit.MouseButton1Click:Connect(function()
		print("Nombre ingresado:", input.Text)

		TweenService:Create(namePrompt, TweenInfo.new(0.5), { BackgroundTransparency = 1 }):Play()
		for _, child in pairs(namePrompt:GetChildren()) do
			if child:IsA("TextLabel") or child:IsA("TextBox") or child:IsA("TextButton") then
				TweenService:Create(child, TweenInfo.new(0.5), {
					TextTransparency = 1,
					BackgroundTransparency = 1
				}):Play()
			end
		end

		wait(0.6)
		namePrompt:Destroy()

		local waitMessage = Instance.new("TextLabel")
		waitMessage.Size = UDim2.new(1, 0, 0.2, 0)
		waitMessage.Position = UDim2.new(0, 0, 0.4, 0)
		waitMessage.BackgroundTransparency = 1
		waitMessage.Text = "Wait Until We Finish Preparing All"
		waitMessage.TextScaled = true
		waitMessage.TextColor3 = Color3.fromRGB(0, 170, 255)
		waitMessage.Font = Enum.Font.GothamSemibold
		waitMessage.Parent = background

		task.delay(180, function()
			TweenService:Create(nameBlur, TweenInfo.new(0.5), { Size = 0 }):Play()
			wait(0.6)
			screenGui:Destroy()
			nameBlur:Destroy()
		end)
	end)
end)
