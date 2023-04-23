local FullScreen = false
getgenv().IsRConsoleAvaiable = false

-- Instances
-- StarterGui.RConsole
local RConsoleLib = {};

-- StarterGui.RConsole
RConsoleLib["GUI"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
RConsoleLib["GUI"]["Name"] = [[RConsole]];
RConsoleLib["GUI"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
RConsoleLib["GUI"].Enabled = false;

-- StarterGui.RConsole.Main
RConsoleLib["Main"] = Instance.new("Frame", RConsoleLib["GUI"]);
RConsoleLib["Main"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RConsoleLib["Main"]["BackgroundTransparency"] = 1;
RConsoleLib["Main"]["Size"] = UDim2.new(0.6713750958442688, 0, 0.8453856706619263, 0);
RConsoleLib["Main"]["Position"] = UDim2.new(0.07658271491527557, 0, 0.09814050048589706, 0);
RConsoleLib["Main"]["Name"] = [[Main]];
RConsoleLib["Main"].Draggable = true;
RConsoleLib["Main"].Active = true;

-- StarterGui.RConsole.Main.Bar
RConsoleLib["Bar"] = Instance.new("Frame", RConsoleLib["Main"]);
RConsoleLib["Bar"]["BackgroundColor3"] = Color3.fromRGB(239, 239, 239);
RConsoleLib["Bar"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RConsoleLib["Bar"]["BackgroundTransparency"] = 0.05000000074505806;
RConsoleLib["Bar"]["Size"] = UDim2.new(1.004374384880066, 0, 0.08579881489276886, 0);
RConsoleLib["Bar"]["BorderColor3"] = Color3.fromRGB(239, 239, 239);
RConsoleLib["Bar"]["Position"] = UDim2.new(0.4338410794734955, 0, -0.009043283760547638, 0);
RConsoleLib["Bar"]["Name"] = [[Bar]];

-- StarterGui.RConsole.Main.Bar.Icon
RConsoleLib["Icon"] = Instance.new("ImageLabel", RConsoleLib["Bar"]);
RConsoleLib["Icon"]["ScaleType"] = Enum.ScaleType.Fit;
RConsoleLib["Icon"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RConsoleLib["Icon"]["Image"] = [[rbxassetid://13180865439]];
RConsoleLib["Icon"]["Size"] = UDim2.new(0.03659530356526375, 0, 0.6883910894393921, 0);
RConsoleLib["Icon"]["Name"] = [[Icon]];
RConsoleLib["Icon"]["BackgroundTransparency"] = 1;
RConsoleLib["Icon"]["Position"] = UDim2.new(0.007571442052721977, 0, 0.1424257457256317, 0);

-- StarterGui.RConsole.Main.Bar.Title
RConsoleLib["Title"] = Instance.new("TextLabel", RConsoleLib["Bar"]);
RConsoleLib["Title"]["TextWrapped"] = true;
RConsoleLib["Title"]["TextScaled"] = true;
RConsoleLib["Title"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
RConsoleLib["Title"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RConsoleLib["Title"]["FontFace"] = Font.new([[rbxasset://fonts/families/Roboto.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RConsoleLib["Title"]["TextSize"] = 14;
RConsoleLib["Title"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
RConsoleLib["Title"]["Size"] = UDim2.new(0.7172535061836243, 0, 0.4007798135280609, 0);
RConsoleLib["Title"]["Text"] = identifyexecutor().." Console";
RConsoleLib["Title"]["Name"] = [[Title]];
RConsoleLib["Title"]["BackgroundTransparency"] = 1;
RConsoleLib["Title"]["Position"] = UDim2.new(0.05776066333055496, 0, 0.27626264095306396, 0);

-- StarterGui.RConsole.Main.Bar.Close
RConsoleLib["X"] = Instance.new("TextButton", RConsoleLib["Bar"]);
RConsoleLib["X"]["TextWrapped"] = true;
RConsoleLib["X"]["AutoButtonColor"] = false;
RConsoleLib["X"]["TextScaled"] = true;
RConsoleLib["X"]["BackgroundColor3"] = Color3.fromRGB(239, 239, 239);
RConsoleLib["X"]["TextSize"] = 26;
RConsoleLib["X"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RConsoleLib["X"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
RConsoleLib["X"]["Size"] = UDim2.new(0.09842874854803085, 0, 0.9257673025131226, 0);
RConsoleLib["X"]["Name"] = [[Close]];
RConsoleLib["X"]["BorderColor3"] = Color3.fromRGB(239, 239, 239);
RConsoleLib["X"]["Text"] = [[X]];
RConsoleLib["X"]["Position"] = UDim2.new(0.8984777927398682, 0, 0, 0);
RConsoleLib["X"]["BackgroundTransparency"] = 0.05000000074505806;

-- StarterGui.RConsole.Main.Bar.Close.UITextSizeConstraint
RConsoleLib["7"] = Instance.new("UITextSizeConstraint", RConsoleLib["X"]);
RConsoleLib["7"]["MaxTextSize"] = 26;

-- StarterGui.RConsole.Main.Bar.Maximize
RConsoleLib["Maximize"] = Instance.new("TextButton", RConsoleLib["Bar"]);
RConsoleLib["Maximize"]["TextWrapped"] = true;
RConsoleLib["Maximize"]["RichText"] = true;
RConsoleLib["Maximize"]["AutoButtonColor"] = false;
RConsoleLib["Maximize"]["TextScaled"] = true;
RConsoleLib["Maximize"]["BackgroundColor3"] = Color3.fromRGB(239, 239, 239);
RConsoleLib["Maximize"]["TextSize"] = 26;
RConsoleLib["Maximize"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
RConsoleLib["Maximize"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
RConsoleLib["Maximize"]["Size"] = UDim2.new(0.09842874854803085, 0, 0.9257673025131226, 0);
RConsoleLib["Maximize"]["Name"] = [[Maximize]];
RConsoleLib["Maximize"]["BorderColor3"] = Color3.fromRGB(239, 239, 239);
RConsoleLib["Maximize"]["Text"] = [[□]];
RConsoleLib["Maximize"]["Position"] = UDim2.new(0.800000011920929, 0, 0, 0);
RConsoleLib["Maximize"]["BackgroundTransparency"] = 0.05000000074505806;

-- StarterGui.RConsole.Main.Bar.Maximize.UITextSizeConstraint
RConsoleLib["9"] = Instance.new("UITextSizeConstraint", RConsoleLib["Maximize"]);
RConsoleLib["9"]["MaxTextSize"] = 26;

-- StarterGui.RConsole.Main.Bar.Minimize
RConsoleLib["Minimize"] = Instance.new("TextButton", RConsoleLib["Bar"]);
RConsoleLib["Minimize"]["TextWrapped"] = true;
RConsoleLib["Minimize"]["AutoButtonColor"] = false;
RConsoleLib["Minimize"]["TextScaled"] = true;
RConsoleLib["Minimize"]["BackgroundColor3"] = Color3.fromRGB(239, 239, 239);
RConsoleLib["Minimize"]["TextSize"] = 26;
RConsoleLib["Minimize"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RConsoleLib["Minimize"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
RConsoleLib["Minimize"]["Size"] = UDim2.new(0.09842874854803085, 0, 0.9257673025131226, 0);
RConsoleLib["Minimize"]["Name"] = [[Minimize]];
RConsoleLib["Minimize"]["BorderColor3"] = Color3.fromRGB(239, 239, 239);
RConsoleLib["Minimize"]["Text"] = [[-]];
RConsoleLib["Minimize"]["Position"] = UDim2.new(0.7015712857246399, 0, 0, 0);
RConsoleLib["Minimize"]["BackgroundTransparency"] = 0.05000000074505806;

-- StarterGui.RConsole.Main.Bar.Minimize.UITextSizeConstraint
RConsoleLib["b"] = Instance.new("UITextSizeConstraint", RConsoleLib["Minimize"]);
RConsoleLib["b"]["MaxTextSize"] = 26;

-- StarterGui.RConsole.Main.CmdPrompt
RConsoleLib["CmdPrompt"] = Instance.new("ScrollingFrame", RConsoleLib["Main"]);
RConsoleLib["CmdPrompt"]["Active"] = true;
RConsoleLib["CmdPrompt"]["MidImage"] = [[http://www.roblox.com/asset/?id=5234388158]];
RConsoleLib["CmdPrompt"]["TopImage"] = [[]];
RConsoleLib["CmdPrompt"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
RConsoleLib["CmdPrompt"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
RConsoleLib["CmdPrompt"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
RConsoleLib["CmdPrompt"]["BackgroundTransparency"] = 0.05000000074505806;
RConsoleLib["CmdPrompt"]["Size"] = UDim2.new(1.004374384880066, 0, 0.9151874780654907, 0);
RConsoleLib["CmdPrompt"]["ScrollBarImageColor3"] = Color3.fromRGB(191, 191, 191);
RConsoleLib["CmdPrompt"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
RConsoleLib["CmdPrompt"]["ScrollBarThickness"] = 15;
RConsoleLib["CmdPrompt"]["Position"] = UDim2.new(0.4338410794734955, 0, 0.4932645559310913, 0);
RConsoleLib["CmdPrompt"]["Name"] = [[CmdPrompt]];
RConsoleLib["CmdPrompt"]["BottomImage"] = [[]];

-- StarterGui.RConsole.Main.CmdPrompt.UIListLayout
RConsoleLib["d"] = Instance.new("UIListLayout", RConsoleLib["CmdPrompt"]);
RConsoleLib["d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.RConsole.Main.Saves
RConsoleLib["Folder"] = Instance.new("Folder", RConsoleLib["Main"]);
RConsoleLib["Folder"]["Name"] = [[Saves]];

-- StarterGui.RConsole.Main.Saves.TextLineInput
RConsoleLib["Input"] = Instance.new("TextBox", RConsoleLib["Folder"]);
RConsoleLib["Input"]["TextSize"] = 14;
RConsoleLib["Input"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RConsoleLib["Input"]["TextWrapped"] = true;
RConsoleLib["Input"]["TextScaled"] = true;
RConsoleLib["Input"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 6);
RConsoleLib["Input"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RConsoleLib["Input"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RConsoleLib["Input"]["MultiLine"] = true;
RConsoleLib["Input"]["Size"] = UDim2.new(0.9800000190734863, 0, 0, 18);
RConsoleLib["Input"]["BorderColor3"] = Color3.fromRGB(6, 6, 6);
RConsoleLib["Input"]["Text"] = [[_]];
RConsoleLib["Input"]["Position"] = UDim2.new(-0.04964490607380867, 0, -0.009164969436824322, 0);
RConsoleLib["Input"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RConsoleLib["Input"]["Visible"] = false;
RConsoleLib["Input"]["Name"] = [[TextLineInput]];
RConsoleLib["Input"]["ClearTextOnFocus"] = false;

-- StarterGui.RConsole.Main.Saves.TextLineInput.UITextSizeConstraint
RConsoleLib["10"] = Instance.new("UITextSizeConstraint", RConsoleLib["Input"]);
RConsoleLib["10"]["MaxTextSize"] = 17;

-- StarterGui.RConsole.Main.Saves.TextLineWarn
RConsoleLib["Warn"] = Instance.new("TextLabel", RConsoleLib["Folder"]);
RConsoleLib["Warn"]["TextWrapped"] = true;
RConsoleLib["Warn"]["TextYAlignment"] = Enum.TextYAlignment.Top;
RConsoleLib["Warn"]["TextScaled"] = true;
RConsoleLib["Warn"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 6);
RConsoleLib["Warn"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RConsoleLib["Warn"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RConsoleLib["Warn"]["TextSize"] = 14;
RConsoleLib["Warn"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RConsoleLib["Warn"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RConsoleLib["Warn"]["Size"] = UDim2.new(0.9800000190734863, 0, 0, 18);
RConsoleLib["Warn"]["BorderColor3"] = Color3.fromRGB(6, 6, 6);
RConsoleLib["Warn"]["Text"] = [[[Warn] Hi]];
RConsoleLib["Warn"]["Name"] = [[TextLineWarn]];
RConsoleLib["Warn"]["Visible"] = false;
RConsoleLib["Warn"]["Position"] = UDim2.new(-3.1526422361594086e-08, 0, 8.477105097881577e-07, 0);

-- StarterGui.RConsole.Main.Saves.TextLineWarn.UITextSizeConstraint
RConsoleLib["12"] = Instance.new("UITextSizeConstraint", RConsoleLib["Warn"]);
RConsoleLib["12"]["MaxTextSize"] = 17;

-- StarterGui.RConsole.Main.Saves.TextLinePrint
RConsoleLib["Print"] = Instance.new("TextLabel", RConsoleLib["Folder"]);
RConsoleLib["Print"]["TextWrapped"] = true;
RConsoleLib["Print"]["TextYAlignment"] = Enum.TextYAlignment.Top;
RConsoleLib["Print"]["TextScaled"] = true;
RConsoleLib["Print"]["BackgroundColor3"] = Color3.fromRGB(6, 6, 6);
RConsoleLib["Print"]["TextXAlignment"] = Enum.TextXAlignment.Left;
RConsoleLib["Print"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RConsoleLib["Print"]["TextSize"] = 14;
RConsoleLib["Print"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
RConsoleLib["Print"]["AutomaticSize"] = Enum.AutomaticSize.Y;
RConsoleLib["Print"]["Size"] = UDim2.new(0.9800000190734863, 0, 0, 18);
RConsoleLib["Print"]["BorderColor3"] = Color3.fromRGB(6, 6, 6);
RConsoleLib["Print"]["Text"] = [[test]];
RConsoleLib["Print"]["Name"] = [[TextLinePrint]];
RConsoleLib["Print"]["Visible"] = false;
RConsoleLib["Print"]["Position"] = UDim2.new(-3.1526422361594086e-08, 0, 8.477105097881577e-07, 0);

-- StarterGui.RConsole.Main.Saves.TextLinePrint.UITextSizeConstraint
RConsoleLib["14"] = Instance.new("UITextSizeConstraint", RConsoleLib["Print"]);
RConsoleLib["14"]["MaxTextSize"] = 17;

-- StarterGui.RConsole.Main.UIAspectRatioConstraint
RConsoleLib["15"] = Instance.new("UIAspectRatioConstraint", RConsoleLib["Main"]);
RConsoleLib["15"]["AspectRatio"] = 1.6069246530532837;

-- Functions
-- Window
local MinSized = nil
local MinPos = nil
local function HideConsole()
    RConsoleLib["GUI"].Enabled = false;
end
local function ShowConsole()
    RConsoleLib["GUI"].Enabled = true;
end

local function MaximizeToggle()
    if not FullScreen then
        MinSized = RConsoleLib["Main"].Size
        MinPos = RConsoleLib["Main"].Position
        RConsoleLib.Main.Size = UDim2.new(1,0,1,0)
        RConsoleLib["Main"].Position = UDim2.new(0,0,0,0);
        FullScreen = true
        RConsoleLib["Main"].Draggable = false;
        RConsoleLib["15"]:Destroy()
    else
        RConsoleLib["Main"].Draggable = true;
        RConsoleLib["Main"]["Size"] = MinSized
        RConsoleLib["Main"]["Position"] = MinPos
        FullScreen = false
        RConsoleLib["15"] = Instance.new("UIAspectRatioConstraint", RConsoleLib["Main"]);
        RConsoleLib["15"]["AspectRatio"] = 1.6069246530532837;
    end
end

local function CPrint(text, color)
	RConsoleLib["GUI"].Enabled = true;
    local frame = RConsoleLib["Print"]:Clone()
    frame.Visible = true
    frame.Parent = RConsoleLib["CmdPrompt"]
    frame.Text = text
end

local function CWarn(text, color)
	RConsoleLib["GUI"].Enabled = true;
    local frame = RConsoleLib["Warn"]:Clone()
    frame.Visible = true
    frame.Parent = RConsoleLib["CmdPrompt"]
    frame.Text = "[⚠️] "..text
end
local function CInput(text, color)
	RConsoleLib["GUI"].Enabled = true;
    local frame = RConsoleLib["Input"]:Clone()
    frame.Visible = true
    frame.Text = ""
    frame.Parent = RConsoleLib["CmdPrompt"]
    task.spawn(function()
        while true do
            frame.PlaceholderText = "■"
            task.wait(1)
            frame.PlaceholderText = ""
        end
    end)
    frame:CaptureFocus()
    frame.FocusLost:wait()
    
    local InputText = frame.Text
    frame.TextEditable = false
    return InputText
end
local function CClear()
    for i,v in pairs(RConsoleLib["CmdPrompt"]:GetChildren()) do
        if v:IsA("TextLabel") or v:IsA("TextBox") then
            v:Destroy()
        end
    end
end
local function SetTitleC(Title)
	RConsoleLib["GUI"].Enabled = true;
    RConsoleLib["Title"].Text = Title
end

-- Run Functions
RConsoleLib["Maximize"].MouseButton1Up:Connect(MaximizeToggle)
RConsoleLib["X"].MouseButton1Up:Connect(HideConsole)
RConsoleLib["Minimize"].MouseButton1Up:Connect(HideConsole)


-- Set Environment
getgenv().rconsoledestroy = HideConsole
getgenv().rconsoleprint = CPrint
getgenv().rconsolewarn = CWarn
getgenv().rconsoleinput = CInput
getgenv().rconsoleclear = CClear
getgenv().rconsoledestroy = HideConsole
getgenv().rconsolecreate = ShowConsole
getgenv().rconsolesettitle = SetTitleC

getgenv().consoledestroy = HideConsole
getgenv().consoleprint = CPrint
getgenv().consolewarn = CWarn
getgenv().consoleinput = CInput
getgenv().consoleclear = CClear
getgenv().consoledestroy = HideConsole
getgenv().consolecreate = ShowConsole
getgenv().consolesettitle = SetTitleC



-- End
getgenv().IsRConsoleAvaiable = true
return RConsoleLib["GUI"], require;
