if loader  == true and console == false then
local Background = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Frame_2 = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Text = Instance.new("ScreenGui")
local TextUI = Instance.new("Frame")
local Loading = Instance.new("TextLabel")
local Image = Instance.new("ScreenGui")
local Warper = Instance.new("Frame")
local Animated = Instance.new("ImageLabel")

--Properties:

Background.Name = "Background"
Background.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Name = "Frame"
Frame.Parent = Background
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(53, 0, 1)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.464705884, 0)
Frame.Size = UDim2.new(0, 304, 0, 504)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(50, 50, 50)
Frame.ImageTransparency = 0.001
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

Frame_2.Name = "Frame"
Frame_2.Parent = Background
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.BorderColor3 = Color3.fromRGB(53, 0, 1)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.5, 0, 0.464705884, 0)
Frame_2.Size = UDim2.new(0, 300, 0, 500)
Frame_2.Image = "rbxassetid://3570695787"
Frame_2.ImageColor3 = Color3.fromRGB(30, 30, 30)
Frame_2.ImageTransparency = 0.001
Frame_2.ScaleType = Enum.ScaleType.Slice
Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_2.SliceScale = 0.120

Title.Name = "Title"
Title.Parent = Frame_2
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, 0, 0.0930555537, 0)
Title.Size = UDim2.new(1, 0, 0.186111107, 0)
Title.Font = Enum.Font.SourceSansBold
Title.Text = ".GG/ANTILOCK"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 50.000
Title.TextStrokeTransparency = 0.750
Title.TextTransparency = 0.001

Text.Name = "Text"
Text.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Text.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextUI.Name = "TextUI"
TextUI.Parent = Text
TextUI.AnchorPoint = Vector2.new(0.5, 0.5)
TextUI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextUI.BackgroundTransparency = 1.000
TextUI.Position = UDim2.new(0.5, 0, 0.699999988, 0)
TextUI.Size = UDim2.new(0, 300, 0, 37)

Loading.Name = "Loading"
Loading.Parent = TextUI
Loading.AnchorPoint = Vector2.new(0.5, 0.5)
Loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Loading.BackgroundTransparency = 1.000
Loading.BorderSizePixel = 0
Loading.Position = UDim2.new(0.5, 0, 0, 0)
Loading.Size = UDim2.new(1, 0, 1, 0)
Loading.Font = Enum.Font.SourceSansBold
Loading.Text = ""
Loading.TextColor3 = Color3.fromRGB(255, 255, 255)
Loading.TextSize = 30.000
Loading.TextStrokeTransparency = 0.750
Loading.TextTransparency = 0.001

Image.Name = "Image"
Image.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Image.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Warper.Name = "Warper"
Warper.Parent = Image
Warper.AnchorPoint = Vector2.new(0.5, 0.5)
Warper.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Warper.BackgroundTransparency = 1.000
Warper.ClipsDescendants = true
Warper.Position = UDim2.new(0.5, 0, 0.449999988, 0)
Warper.Size = UDim2.new(0, 200, 0, 200)

Animated.Name = "Animated"
Animated.Parent = Warper
Animated.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Animated.BackgroundTransparency = 1.000
Animated.Size = UDim2.new(1, 0, 1, 0)
Animated.Image = "http://www.roblox.com/asset/?id=12998277905"
Animated.ImageTransparency = 0.001

-- Scripts:

local function SPQUHL_fake_script() -- Loading.LocalScript 
	local script = Instance.new('LocalScript', Loading)
	local function QIFE_fake_script()
        local script = Instance.new('LocalScript', Image)
        
        local warperFramerate = 30
        local lastFrame = 1
        local frames = 32
        local rows = 6
        local columns = 6
        
        local AnimationFrameWrapper = script.Parent.Warper
        
        local AnimatedSprite = AnimationFrameWrapper.Animated
        
        local t = tick()
        
        AnimatedSprite.Size = UDim2.new(columns,0,rows,0)
        
        local function AnimationFunction()
        end
        
        local function UpdateWarper(f)
            if tick()-t >= 1/warperFramerate then
                lastFrame = lastFrame + 1
                if lastFrame > frames then lastFrame = 1 end
                local CurrentColumn = lastFrame
                local CurrentRow = 1
                repeat
                    if CurrentColumn>columns then
                        CurrentColumn = CurrentColumn - columns
                        CurrentRow = CurrentRow + 1
                    end
                until not(CurrentColumn>columns)
        
                AnimationFrameWrapper.Animated.Position = UDim2.new(-(CurrentColumn-1),0,-(CurrentRow-1),0)
                print(CurrentColumn,CurrentRow)
                f()
        
                t = tick()
            end
        end
        
        game:GetService("RunService").RenderStepped:Connect(function()
            UpdateWarper(AnimationFunction)
        end)
    end
    coroutine.wrap(QIFE_fake_script)()
	local plr = game.Players.LocalPlayer.Name
	script.Parent.Text = "Loading"
	wait(0.5)
	script.Parent.Text = "Loading."
	wait(0.5)
	script.Parent.Text = "Loading.."
	wait(0.5)
	script.Parent.Text = "Loading..."
	wait(0.5)
	script.Parent.Text = "Loading.."
	wait(0.5)
	script.Parent.Text = "Loading."
	wait(0.5)
	script.Parent.Text = "Loading"
	wait(0.5)
	script.Parent.Text = "Welcome, "..plr.."!"
end
coroutine.wrap(SPQUHL_fake_script)()
getgenv().bgblur = Instance.new('BlurEffect', game.Lighting)
for i = 1,15,-1 do
    getgenv().bgblur.Size = getgenv().bgblur.Size - 1
    wait(0.04)
end
transparencyyy = 0
for transparencyyy = 1,0,-0.1 do
    Frame.ImageTransparency = transparencyyy
    Frame_2.ImageTransparency = transparencyyy
    Animated.ImageTransparency = transparencyyy
    Title.TextStrokeTransparency = transparencyyy
    Title.TextTransparency = transparencyyy
    Loading.TextTransparency = transparencyyy
    Loading.TextStrokeTransparency = transparencyyy
    wait(0.05)
end
wait(5)
for transparencyy = 0,1,0.1 do
    Frame.ImageTransparency = transparencyy
    Frame_2.ImageTransparency = transparencyy
    Animated.ImageTransparency = transparencyy
    Title.TextStrokeTransparency = transparencyy
    Title.TextTransparency = transparencyy
    Loading.TextTransparency = transparencyy
    Loading.TextStrokeTransparency = transparencyy
    wait(0.04)
end
for i = 15,-100,-1 do
    getgenv().bgblur.Size = getgenv().bgblur.Size - 1
    wait(0.04)
end
elseif console then
rconsolename(consolename)
local total = 0
plruser = game:GetService("Players").LocalPlayer.Name
rconsoleclear()
rconsoleprint(consolecolor)
while total < 5 do
total = total + 1
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                       @                                        
                                     &&@@@                                      
                                    *@@@@@@@                                    
                                  &&&@@@@@@@&                                   
                                %%&&@@@@@@@@&&&                                 
                               &%%&&@@@@@@@@&&&@                                
                             ##%%%@@@@@@@@@@@&&&&&                              
            &&&%%%#############%&&@@@///@@@@@//&&&@@@@@                         
             &&&%%%%######%%%&&&&&@@ //%//@@ %%,&&@@@@@@@@@@@@@@@@@@            
               &&&%%%#####%%%%%&@@@@ **#  @@ %%/@@@@@@@@@@@@@@@@@@              
                  &&&%%%%%#####%%%&&      &&    @@@@@@@@@@@@@@@@                
                    @&&&&&&&%%%%%%%%%///&&&&&  /@@@@@@@@@@@@@                   
                     &&&&&&&&%%%%%%%&@@@&&&&&&&&@@@@@@@@@@@@                    
                       &&&&&&%%%%%%%&&&&&&&&&&&&&&@@@@@@                        
                       &&&&&%%%%%%%%&&&&&&&&&%%&&&@@@@@@                        
                     @@&&&&&%%%%%%&&&&&&&&&&%%%%%%&&&@@@@@                      
                     &&&&&%%%%%%%%&&&&&&&&&&%%%%%%&&&@@@@@                      
                     &&&%%%%%%%%&&&&&&&@&&&&%%%%##%%%&&&@@                      
                    &&&&%%%%%%%&(((((     ((///%####%%%&&&@@                    
                    &&&&&&&&                      &&###%&&&&                    
                  @@                                      &&&                   
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                       @                                        
                                     @@@@@                                      
                                    *@@@@@**                                    
                                    &@@@@@@@                                    
                                &&%%@@@@@@@@&                                   
                                %%&&@@@@@@@@&@@                                 
                ###############%%%@@@@@@@@@@@&&@                                
                &&%%####%%%%&&&&&&@@@@@@////@&&&                                
                    %%%###%%&@@@@@@@@@@@  @@ @@ **&&&&&&@@@@                    
                    &%%%####%%%@@@@@@@@@  %%.@@ &&@@@@@@@@@@@@@                 
                       &%%%%###%%%&&@@@&     @@     @@@@@@@@                    
                        &&&&%%%%%%%%&&&@&&///@@@  //@@@@@@                      
                          &&&%%%%%%%&@@&&&&&&@@@@@@@@@@@                        
                          &&&%%%%%&&&&&&%%%%&&&@@@@@@@@                         
                          &&&%%%%%&&&&&&%%%%%&&&@@@@@                           
                        &&&&%%%%&&&&&&&&&&%%%%%&&&@@@                           
                        &&&&%%%%&&&&&&&&&&%%%%%%&&&&@@@                         
                       &&&%%%%%%&&&&&&&@&&%%%%%#%%&&&@@                         
                       &%%%%%%%&(((((     ((/%%###%%&&&*                        
                       &&&&&                   &####%&&&                        
                                                     &&%                        
                                                       &                        
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                       @                                        
                                     @@@@@                                      
                                     @@@@@@@                                    
                                    &@@@@@&&                                    
                                    &@@@@@&&@                                   
                        &&%%&@@@@@&&@@@@@@&&@                                   
                          ##%&&@@@@@@@@@@@@@/((                                 
                            #%%&@@@@@@@@@@@@ &&/..                              
                            ###%&&@@@@@@@@@@ %% **&&@                           
                             %%#%%&&@@@&@@@@@       @                           
                               %%%%%%&&@&&&&@// @@                              
                               %%%%%%&&&&&&&@@@@@@//                            
                               %%%%%&&&&&&&&&@@@@@                              
                               %%%%%&&&&&&&&&&&@@@                              
                             %%%%%&&&&&%%%%%%&&&@@                              
                             %%%%%&&&&&&%%%%%%%&@@                              
                             %%%&&&&&&&@&&%%%##%&&                              
                             %%%&&(((   ((&&%##%&&                              
                            &&&             &%%#%%                              
                                               &##                              
                                                &&                              
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                       @@@                                      
                                     &&@@@                                      
                                     &&@@@&&                                    
                                    %&&@@@&&                                    
                                    &&&@@@&&&                                   
                                  &&@@@@@@&&@@@                                 
                                  %%&@@@@@&&@@@                                 
                                ##%%&@@@@@@@@@@ ((                              
                               &####%@@@@@@@@@@                                 
                               &%%##%&&@@@&&@@@@                                
                             &&&%%%%%%%&&&&&@@@@                                
                               &&&%%%%%&&&&&@@@@@@                              
                               @&&%%%%%&&&&&@@@@                                
                                &&%%%%%&&&&&@@@@                                
                                &&%%%&&&&&&&%@@                                 
                                  %%%&&&%%%%%@@                                 
                                  &&%&&&&&%%%                                   
                                    &&&&&&%%%                                   
                                    &  &&&%%&                                   
                                        @@%%                                    
                                          %%                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                       @@@                                      
                                     &&@@@                                      
                                     &&@@@@@                                    
                                    %&&@@@@@                                    
                                    %&&@@@@@@@@@                                
                                  ##%&&@@@@@@@@@                                
                                &&###&&@&&@@@@@@                                
                                %%#####%&&@@@@@@                                
                               @%%%%%##%&&@@@@@@@@                              
                               &&&%%%##%&&@@@&&@@@                              
                               &&&%%%%%%&&@@&&&@@@                              
                               &&&%%%%%%&&@@&&&@@@                              
                               &&&&&%%%%%%&&&&&@                                
                               &&&&&%%%%%%&&&&&@                                
                                &&%%%%%%%%&&&%%@                                
                                &&%%%&&%%%&&&%%                                 
                                %%%%&&&&&&&&&%%                                 
                                %%%%&&&(((((&%%                                 
                                  %%&&&                                         
                                  &&@                                           
                                  &&                                            
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                       @@@                                      
                                     **@@@**                                    
                                     &&@@@@@                                    
                                    %&&@@@@@@                                   
                                    %&&@@@@@@                                   
                                  ###&&@@@@@@@@@@@@@@@@@@@                      
                                  ###%%@@@@@@@@@@@@@@@@@                        
                            &%%%%%###%%%%%%%&@@@@@@@@@@                         
                        &&######%%%%######%%&@@@@@@@@@@                         
                        ##%%%&&&&&%%%###%%&&@@@&&&@@@                           
                          ##%&&&&&&&%%%%%%&&@&&&&&@@                            
                          &&%&&&&&&&%%%%%%&&@&&&@@                              
                             &&&&&&&%%%%%%%%&&&&&&@@                            
                             %%&&&%%%%%%%%%%&&&&&&&&                            
                             &&&%%%%%%%%%%%%%&&&%%&&                            
                             &&&%%%%%&&&&&&&&&&&%%%%                            
                             &&%%%%%&&&@&&&&&&&&%%%%%                           
                            *%%%%%&&&((   (((//&%%%%%                           
                            %%%%&&                &&#                           
                            %%%                                                 
                            &                                                   
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                     @@@@@                                      
                                    *@@@@@@@                                    
                                    &@@@@@@@&                                   
                                  %%&@@@@@@@@&&                                 
                                &&%%&&&@@@@@@&&@                                
                               &%%%%%&&@@@@@@@@&&&&&&&&&&&&&@@@@@@              
                               #%%###%%@@@@@@@@&&&&&&&&&@@@@@@@@                
                  &&&################%%&@@@@@@@@@@@@@@@@@@@@@@@                 
               &%%%%#################%%%&&&&&@@@@@@@&@@@@@@@@                   
                  %%%%%%%%%%%%%%%%%%###%%%&&@@@@&&@@@@@@@@@@                    
                    &&&&&&&&&&&&%%%%%%%%%%&&@&&&&&@@@@@@                        
                     @@&&&&&&&&%%%%%%%%%%%&&@&&&&&@@@@@@                        
                        &&&&&&&%%%%%%%%%%%%%&&&&&&&&@@@                         
                          &&&&&%%%%%%%%%%%%%%&&&&&&&@@@@                        
                        &&&&&&&%%%%%%&&&&&&&&&&&&&%%&@@@                        
                        &&&&&%%%%%%%%&&&&&&&&&&&&&%%%&&@                        
                       @&&&&%%%%%%&&&&&@&&&&&&&%%%%%%%%&&&                      
                       &&&&&%%%%&&&&(       (///%%##%%%%&&                      
                       &&&&&%&&&                     &&%%%@@                    
                     &&&&&                                                      
                     @@                                                         
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                       @                                        
                                     @@@@@                                      
                                    *@@@@@@@*                                   
                                  &&&@@@@@@@&                                   
                                %%%%&@@@@@@@@&&@                                
                               &%%&&@@@@@@@@@&&&                                
                             ###%%&&@@@@@@@@@&&&&&                              
                        &&&&&###%%&&&@@@@@@@@@@&&&&&&&&&&&&&&@@@@@@@@           
            &%%%%%%%############%%%%&&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@            
             &&%%%%%%##########%%%%%%%%&@@@@@@@@@@@@&@@@@@@@@@@@@@              
               @&&&&%%%%%%%%########%%%&&&@@@@@&@@@@@@@@@@@@@@@                 
                  @@&&&&&&&&%%%%%%%%%%%%&&@@&&&&@@@@@@@@@@@@                    
                    @&&&&&&&&&&%%%%%%%%%&&&&@&&&@@@@@@@@@@@@                    
                       &&&&&&%%%%%%%%%%%&&&&&@@&&&@@@@@@                        
                       &&&&&&%%%%%%%%%%&&&&&@&&&&&&&@@@@@@                      
                     @@&&&&&%%%%%%%%%&&&&&&&&&&&&&&&&@@@@@                      
                     &&&&&%%%%%%%%%%&&&&&&&&&&&%%%%%&&&@@@                      
                     &&&&&%%%%%%&&&&&&&@&&&&%%%%%%%%%%%&&&@@                    
                    &&&&&&%%%%%&&&(((       (//%%%###%%%&&&&*                   
                    &&&&&&&&&                       &&&%%%&&&                   
                  &&@                                                           
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                       @                                        
                                     &&@@@                                      
                                    &@@@@@@@                                    
                                  &&&@@@@@@@&                                   
                                %%&&@@@@@@@@&&&                                 
                               &%%&&@@@@@@@@&&&@                                
                             ##%%%@@@@@@@@@@@&&&&&                              
            &&&%###############%&&@@@@@@@@@@@&&&&&@@@@@                         
             &&%%%%%######%%%&&&@@@@@@@@@@@@@@@&&&@@@@@@@@@@@@@@@@@@            
               &%%%%%#####%%%%%&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@              
                @@&&&%%%%%#####%%%&&&@@@@@&&&@@@@@@@@@@@@@@@@@@                 
                    @&&&&&&&%%%%%%%%%@@@&&&&&&&@@@@@@@@@@@@@@                   
                     &&&&&&&&%%%%%%%&@@@&&&&&&&&@@@@@@@@@@@@                    
                       &&&&&%%%%%%&&&&&&&&&&&&&&&&@@@@@@                        
                       &&&&&%%%%%%%%&&&&&&&&&%%&&&@@@@@@                        
                     &&&&&&&%%%%%%&&&&&&&&&&%%%%%%&&@@@@@@                      
                     &&&&&%%%%%%%%&&&&&&&&&&%%%%%%&&&@@@@@                      
                    @&&&%%%%%%%%&&&&&&&@&&&&%%%%##%%%&&&@@                      
                    &&&&%%%%%%%&(((((     ((///%####%%%&&&@@                    
                    &&&&&&&&                      &&###%&&&&                    
                  @@                                      &&&                   
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                       @                                        
                                     @@@@@                                      
                                    *@@@@@**                                    
                                    &@@@@@@@                                    
                                &&%%@@@@@@@@&                                   
                                %%&&@@@@@@@@&@@                                 
               &###############%%%@@@@@@@@@@&&&@                                
                %%######%%%%&&&&&&@@@@@@@@@@@&&&                                
                  &&%#####%%&@@@@@@@@@@@@@@@@@@&&&&&&&&&@@@@                    
                    %%%#####%&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                 
                     @@&%%%%###%&&&&@@@&@@&&@@@@@@@@@@@@@@@@                    
                        &&&&%%%%%%%%&&&@&&&&@@@@@@@@@@@@@@                      
                        @@&&&%%%%%%%&@@&&&&&&@@@@@@@@@@@                        
                          &&&%%%%%&&&&&&%%%%&&&@@@@@@@@                         
                        @@&&&%%%%%&&&&&&%%%%%&&&@@@@@                           
                        &&&&%%%%&&&&&&&&&&%%%%%&&&@@@                           
                        &&&&%%%%&&&&&&&&&&%%%%%%&&&&@@@                         
                       &&&%%%%%%&&&&&&&@&&%%%%%#%%&&&@@                         
                       &%%%%%%%&(((((     ((/%%###%%&&&                         
                       &&&&&                   &####%&&&                        
                                                     %%%                        
                                                       &                        
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                       @                                        
                                     @@@@@                                      
                                     @@@@@@@                                    
                                    &@@@@@&&                                    
                                  &&@@@@@@&&@                                   
                        &&%%&@@@@@@@@@@@@@&&@                                   
                          ##%&&@@@@@@@@@@@@@@@@                                 
                            #%%&@@@@@@@@@@@@@@@&@@                              
                            ###%&&@@@@@@@@@@@@@@@@&&@                           
                             %%#%%&&@@@&@@@@@@@@@@@@@                           
                               %%%%%%@@@&&&&@@@@@@@@                            
                               %%%%%%&&&&&&&@@@@@@@@                            
                               %%%%%&&&&&&&&&@@@@@                              
                               %%%%%&&&&&&&&&&&@@@                              
                             %%%%%&&&&&%%%%%%&&&@@                              
                             %%%%%&&&&&&%%%%%%%&@@                              
                             %%%&&&&&&&@&&%%%##%&&                              
                             %%%&&(((   ((&&%##%&&                              
                            &&&             &###%%                              
                                               &##                              
                                                &&                              
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                       @@@                                      
                                     &&@@@                                      
                                     &&@@@&&                                    
                                    %&&@@@&&                                    
                                    &&&@@@&&@                                   
                                  &&@@@@@@&&@@@                                 
                                  %%&@@@@@&&@@@                                 
                                ##%%&@@@@@@@@@@@                                
                               &####%@@@@@@@@@@@                                
                             //&%%##%&&@@@&&@@@@@@                              
                             &&&%%%%%%%&&&&&@@@@@@                              
                               &&&%%%%%&&&&&@@@@@@                              
                               @&&%%%%%&&&&&@@@@                                
                                &&%%%%%&&&&&@@@@                                
                                &&%%%&&&&&%%%@@                                 
                                  %%%&&&%%%%%@@                                 
                                  &&%&&&&&%%%                                   
                                    &&&&&&%%%                                   
                                    &  &&&%%&                                   
                                        @@%%                                    
                                          %%                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                       @@@                                      
                                     &&@@@                                      
                                     &&@@@@@                                    
                                    %&&@@@@@                                    
                                    %&&@@@@@@@@@                                
                                  ###&&@@@@@@@@@                                
                                &&###&&@&&@@@@@@                                
                                  #####%&&@@@@@@                                
                                  %%###%&&@@@@@@                                
                                &&%%###%&&@@@&&@@@                              
                                &&%%%%%%&&@@&&&@@@                              
                               &&&%%%%%%&&@@&&&@@@                              
                               &&&&&%%%%%%&&&&&@                                
                               &&&&&%%%%%%&&&&&@                                
                                &&%%%%%%%%&&&%%@                                
                                &&%%%&&%%%&&&%%                                 
                                %%%%&&&&&&&&&%%                                 
                                &&%%&&&(((((&%%                                 
                                  %%&&&                                         
                                  &&@                                           
                                  &&                                            
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                       @@@                                      
                                     **@@@**                                    
                                     &&@@@@@                                    
                                    %&&@@@@@@                                   
                                    %&&@@@@@@             @@                    
                                  ###&&@@@@@@@@@@@@@@@@@@@                      
                                  ***%%@@@@@@@@@@@@@@@@@                        
                            &   **...%%%%%%%&@@@@@@@@@@                         
                        &&###     .. #####%%&@@@@@&&@@@                         
                        ##%%%  &     ###%%&&@@@&&&@@@                           
                          %%%  &    %%%%%%&&@&&&&&@@                            
                          &&%//&&&&&%%%%%%&&@&&&@@                              
                             &&&&&&&%%%%%%%%&&&&&&@@                            
                             &&&&&%%%%%%%%%%&&&&&&&&                            
                             &&&%%%%%%%%%%%%%&&&%%&&                            
                             &&&%%%%%&&&&&&&&&&&%%%%                            
                             &&%%%%%&&&@&&&&&&&&&&%%%                           
                            *%%%%%&&&((   (((//&%%%%%                           
                            %%%%&&@@              &&#                           
                            %%%                                                 
                            &                                                   
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                     @@@@@                                      
                                    *@@@@@@@                                    
                                    &@@@@@@@&                                   
                                  %%&@@@@@@@@&&                                 
                                &&%%&&&@@@@@@&&&                                
                               &%%%%%&&@@@@@@@@&&&&&&&&&&&&&@@@@@@              
                               #%%###///@@@@@@@&&&&&&&&&@@@@@@@@                
                  &&&########## ..## ..#  @@@@@@@@@@@@@@@@@@@@@                 
               &%%%%%########  ...## ../  &&&@@@@@@@&@@@@@@@@                   
                  %%%%%%%%%%%     %%    %%&&@@@@&&@@@@@@@@@@                    
                    &&&&&&&&&// %%%%%***%%&&@&&&&&@@@@@@                        
                     @@&&&&&&&&%%%%%%%%%%%&&@&&&&&@@@@@@                        
                        &&&&&&&%%%%%%%%%%%%%&@@&&&&&@@@                         
                          &&&&&%%%%%%%%%%%%%%&&&&&&&@@@@                        
                        &&&&&&&%%%%%%&&&&&&&&&&&&&%%&&&@                        
                        &&&&&%%%%%%%%&&&&&&&&&&&&&%%%&&@                        
                        &&&&%%%%%%&&&&&@&&&&&&&%%%%%%%%&&&                      
                       &&&&&%%%%&&&&(       (///%%##%%%%&&                      
                       &&&&&%&&&                     &&#%%&&                    
                     &&&&&                                                      
                     @@                                                         
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
wait(0.1)
rconsoleclear()
rconsoleprint([[
                                                                                    
                                                                                
                                                                                
                                                                                
                                                                                
                                       @                                        
                                     @@@@@                                      
                                    *@@@@@@@*                                   
                                  &&&@@@@@@@&                                   
                                %%%%&@@@@@@@@&&@                                
                               &%%&&@@@@@@@@@&&&                                
                             &&#%%&&@@@@@@@@@&&&&&@@                            
                        &&&&&###%%//&@@@/////@@&&&&&&&&&&&&&&@@@@@@@@           
            &&&%%%%%############  //,&&@  &&*@@@@@@@@@@@@@@@@@@@@@@@            
             &&&%%%%%##########%  //,%%&  ##,@@@@@@@&@@@@@@@@@@@@@              
               @&&&&&%%%%%%%####     %%&     @@&@@@@@@@@@@@@@@@                 
                  @@&&&&&&&&%%%%**  %%%%**//&&&&@@@@@@@@@@@@@                   
                    @&&&&&&&&&&%%%%%%%%%&&&&@&&&@@@@@@@@@@@@                    
                       &&&&&&%%%%%%%%%%%&&&&&@@&&&&&@@@@                        
                       &&&&&&%%%%%%%%%%&&&&&&&&&&&&&@@@@@@                      
                     @@&&&&&%%%%%%%%%&&&&&&&&&&&&&&&&@@@@@                      
                     &&&&&&&%%%%%%%%&&&&&&&&&&&%%%%%&&&@@@@@                    
                     &&&&&%%%%%%&&&&&&&@&&&&%%%%%%%%%%%&&&@@                    
                    @&&&&&%%%%%&&&(((       (//%%%###%%%&&&&*                   
                    &&&&&&&&&                       &&&#%%&&&                   
                  &&@                                                           
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
]])
if total == 1 then
  rconsolename("Loading - 20%")
elseif total == 2 then
  rconsolename("Loading - 40%")
elseif total == 3 then
  rconsolename("Loading - 60%")
elseif total == 4 then
  rconsolename("Loading - 80%")
elseif total == 4 then
  rconsolename("Loading - 100%")
elseif total == 5 then
  rconsolename("Loaded!")
end
end
rconsoleclear()
rconsoleprint("W")
wait(0.2)
rconsoleprint("E")
wait(0.2)
rconsoleprint("L")
wait(0.2)
rconsoleprint("C")
wait(0.2)
rconsoleprint("O")
wait(0.2)
rconsoleprint("M")
wait(0.2)
rconsoleprint("E ")
wait(0.2)
rconsoleprint(plruser)
wait(2)
end


--< luraph stuff >--

 if not LPH_OBFUSCATED then 
        LPH_JIT_MAX = function(...) return (...) end;
        LPH_NO_VIRTUALIZE = function(...) return (...) end;
    end


--< bypass anticheat >--


hookfunction((gcinfo or collectgarbage), function(...)
   return math.random(5000000,200)
end)
local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

if not protect then
protect = function(f) return f end
end

setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9) end))
--< No Lag >--


if not game:IsLoaded() then
    game.Loaded:Wait()
end
--< No Double Execute >--


    if getgenv().ggantilock == true then
                  
        return
    end
    
    getgenv().ggantilock = true
--< Aimviewer >--


_G.enable = false
_G.method = "MousePos" 
local rs = game:GetService("RunService")
local localPlayer = game.Players.LocalPlayer
local mouse = localPlayer:GetMouse()
local target;
local uis = (game:GetService('UserInputService'))
local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
		Title = "Aimviewer";
		Text = ".gg/antilock";
        Icon = icon;
	})

function getgun()
    for i,v in pairs(target.Character:GetChildren()) do
        if v and (v:FindFirstChild('Default') or v:FindFirstChild('Handle') )then
            return v
        end
    end
end

function closest()
    local a = math.huge
    local b

    for i, v in pairs(game.Players:GetPlayers()) do
        if
            v ~= plr and v.Character and v.Character:FindFirstChild("Head") and
                v.Character:FindFirstChild("HumanoidRootPart")
         then
            local c = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local d = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(c.X, c.Y)).Magnitude

            if a > d then
                b = v
                a = d
            end
        end
    end

    return b
end

mouse.KeyDown:Connect(function(z)
    if z == AimviewerToggleKeybind then
        if _G.enable == false then
            _G.enable = true
            StarterGui:SetCore("SendNotification", {
                Title = "Aimviewer Enabled";
                Text = ".gg/antilock";
                Icon = icon;
            })
            if console == true then
                rconsoleprint("Aimviewer Enabled\n");
            end
        elseif _G.enable == true then
            _G.enable = false 
            StarterGui:SetCore("SendNotification", {
                Title = "Aimviewer Disabled";
                Text = ".gg/antilock";
                Icon = icon;
            })
            if console == true then
                rconsoleprint("Aimviewer Disabled\n");
            end
        end
    end
end)

mouse.KeyDown:Connect(function(z)
    if z == AimviewerSwitchKeybind then
        target = closest()
        if target then
            StarterGui:SetCore("SendNotification", {
                Title = "Aimviewing: "..tostring(target.Name);
                Text = ".gg/antilock";
                Icon = icon;
            })
            if console == true then
                rconsoleprint("Aimviewing: "..tostring(target.Name).."\n");
            end
        end
    end
end)


LPH_NO_VIRTUALIZE(function()

local avp = Instance.new("Part",game.Workspace)
avp.CanCollide = false
avp.Anchored = true
avp.Size = Vector3.new(0.1,0.1,0.1)
local mats = {"Plastic","ForceField","Neon","SmoothPlastic","Wood","WoodPlanks","Marble","Basalt","Slate","CrackedLava","Concrete","Limestone","Granite","Pavement","Brick","Pebble","Cobblestone","Rock","Sandstone","CorrodedMetal","DiamondPlate","Foil","Metal","Grass","LeafyGrass","Sand","Fabric","Snow","Mud","Ground","Asphalt","Salt","Ice","Glacier","Glass","Air","Water"}
    task.spawn(
    function()
        rs.RenderStepped:Connect(
            function()
                if not target or not target.Character then
                    return
                end
                if _G.enable and target.Character:FindFirstChildWhichIsA("Tool") and target.Character:FindFirstChild("BodyEffects") and target.Character:FindFirstChild("Head") and getgun() then
                    local unfixedval = target.Character.BodyEffects[_G.method].Value -- Raw vector3 from player
                    avp.Color = AimviewerColor
                    avp.Material = AimviewerMaterial
                    avp.Size = Vector3.new(AimviewerBeamWidth,AimviewerBeamWidth,(target.Character.Head.Position-unfixedval).Magnitude)
                    avp.CFrame = CFrame.lookAt((target.Character.Head.Position+unfixedval)/2,unfixedval,Vector3.new(0,0.1,0))
                    local midpoint = (target.Character.Head.Position+unfixedval)/2
                    local offset = (midpoint).Magnitude >= 1000 and (midpoint).Magnitude or 0

if offset > 300 then
   offsetnew = 300 
else
   offsetnew = offset
end

    
                    avp.CFrame = avp.CFrame * CFrame.new(0,0,offsetnew)
                else 
                    avp.CFrame = CFrame.new(0,-100,0)
                    
                end 
                 if not table.find(mats,AimviewerMaterial) then 
                    AimviewerMaterial = "Neon"
                end 
            end
        )
    end
)
end)()


local lplayer = (game.Players.LocalPlayer)
local run_service = (game:GetService('RunService'))
local uis = (game:GetService('UserInputService'))


local var = (false)


--< Desync >--


StarterGui:SetCore("SendNotification", {
		Title = "Desync";
		Text = ".gg/antilock";
        Icon = icon;
	})

local mouse = game.Players.LocalPlayer:GetMouse()

mouse.KeyDown:Connect(function(key)
if key == PredictionKeybind then
        var = not (var)
        if (var == true) then
game.StarterGui:SetCore("SendNotification", {
		Title = "Desync Enabled";
		Text = ".gg/antilock";
        Icon = icon;
	})
    if console == true then
        rconsoleprint("Desync Enabled\n");
    end
        else
game.StarterGui:SetCore("SendNotification", {
		Title = "Desync Disabled";
		Text = ".gg/antilock";
        Icon = icon;
	})
    if console == true then
        rconsoleprint("Desync Disabled\n");
    end
        end
    end
end)
    run_service.Heartbeat:Connect(function()
    if (var == true) then
        pcall(function()
       local v = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
       game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity * PredictionMultiplier
       game:GetService("RunService").RenderStepped:Wait()
       game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = v
        end)
    end 
end)


--< AntiLock >--

StarterGui:SetCore("SendNotification", {
    Title = "Antilock";
    Text = ".gg/antilock";
    Icon = icon;
})

antilockk = false 

local mouse = game.Players.LocalPlayer:GetMouse()

game:GetService("RunService").heartbeat:Connect(function()
    if antilockk ~= false then 
    local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(AntiVelocity)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
    end 
end)


mouse.KeyDown:Connect(function(key)
if key == AntiKeybind then
if antilockk == true then
 antilockk = false
 game.StarterGui:SetCore("SendNotification", {
                   Title = "Anti Disabled",
                   Text = ".gg/antilock",
                   Icon = icon;
                   })
                   if console == true then
                    rconsoleprint("Anti Disabled\n");
                   end
else
antilockk = true
game.StarterGui:SetCore("SendNotification", {
                   Title = "Anti Enabled",
                   Text = ".gg/antilock",
                   Icon = icon;
                   })
                   if console == true then
                    rconsoleprint("Anti Enabled\n");
                   end
end
end
end)

--< Console >--


if console == true then 
    rconsoleclear()
    rconsolename(consolename)
    rconsoleprint(consolecolor)
    rconsoleprint([[

                                                                              ___  
                                                                           ,o88888 
                                                                        ,o8888888'
                                                  ,:o:o:oooo.        ,8O88Pd8888"  
                                              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"    
                                            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      
                                           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        
                                          , ..:.::o:ooOoOO8O888O8O,COCOO"          
                                         , . ..:.::o:ooOoOOOO8OOOOCOCO"            
                                          . ..:.::o:ooOoOoOO8O8OCCCC"o             
                                             . ..:.::o:ooooOoCoCCC"o:o             
                                             . ..:.::o:o:,cooooCo"oo:o:            
                                          `   . . ..:.:cocoooo"'o:o:::'            
                                          .`   . ..::ccccoc"'o:o:o:::'             
                                         :.:.    ,c:cccc"':.:.:.:.:.'              
                                       ..:.:"'`::::c:"'..:.:.:.:.:.'               
                                     ...:.'.:.::::"'    . . . . .'                 
                                    .. . ....:."' `   .  . . ''                    
                                  . . . ...."'                                     
                                  .. . ."'                                         
        
        
        
        
]])
wait(0.05)
rconsoleprint("                                                  .gg/antilock\n")
wait(0.05)
rconsoleprint("KEYBINDS:")
wait(0.05)
rconsoleprint("\nAimviewer: ")
wait(0.05)
rconsoleprint(AimviewerToggleKeybind)
wait(0.05)
rconsoleprint("\nAimviewer Switch: ")
wait(0.05)
rconsoleprint(AimviewerSwitchKeybind)
wait(0.05)
rconsoleprint("\nAntilock: ")
wait(0.05)
rconsoleprint(AntiKeybind)
wait(0.05)
rconsoleprint("\nDesync: ")
wait(0.05)
rconsoleprint(PredictionKeybind)
wait(0.05)
rconsoleprint("\n                                                  .gg/antilock\n")
end
