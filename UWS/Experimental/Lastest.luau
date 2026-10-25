local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Unwavering Soul",
   Icon = 0,
   LoadingTitle = "Now Loading...",
   LoadingSubtitle = "by kcyrodndh",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false,
   DisableRayfieldPrompts = true,
})

local MainTab = Window:CreateTab("Main", nil)

local MainPermSection = MainTab:CreateSection("⚠️PERMANENTS ⚠️")

local Label = MainTab:CreateLabel("To revert these changes, leave the experience or enter another sub place", nil, Color3.fromRGB(nil, nil, nil), false) -- Title, Icon, Color, IgnoreTheme

local AntiAmalgamButton = MainTab:CreateButton({
   Name = "Anti-Amalgamate [PERMANENT]",
   Callback = function()
 while task.wait() do 
 workspace.DebrisHolder:WaitForChild("InsaneAmalgamate"):Destroy()
end-- The function that takes place when the button is pressed
   end,
})

local MainSection = MainTab:CreateSection("Autos")

local TrashButton = MainTab:CreateButton({
   Name = "Collect Trash",
   Callback = function()
      local lp = game.Players.LocalPlayer
      local pcord = lp.Character.HumanoidRootPart.CFrame
      
      for _, k in next, workspace.DebrisHolder:GetChildren() do
         if k.Name == 'TrashCan' and k:IsA'UnionOperation' then
            game:GetService('RunService').PostSimulation:Wait()
            lp.Character.HumanoidRootPart.CFrame = k:GetPivot() * CFrame.new(0, 5, 0)
            task.wait(.7)
         end 
      end

      lp.Character.HumanoidRootPart.CFrame = pcord

      task.wait(1)
      if workspace.DebrisHolder:FindFirstChild("TrashCan") then
         Rayfield:Notify({
            Title = "Failed to collect some trash",
            Content = "Please re-execute",
            Duration = 6.5,
         })
      end
   end,
})

local SandyTab = Window:CreateTab("Sandy Beach", nil)

local ShopButton = SandyTab:CreateButton({
   Name = "Open Sandeller Shop",
   Callback = function()
      local lp = game.Players.LocalPlayer
      local pcord = lp.Character.HumanoidRootPart.CFrame
      local Sandeller = workspace:WaitForChild("Sandeller")
      
      lp.Character.HumanoidRootPart.CFrame = Sandeller:GetPivot() * CFrame.new(0, 5, 0)
      task.wait(0.5)
      fireproximityprompt(Sandeller.QuestP.ProxP)
      task.wait(0.6)
      
      local args = {
         workspace:WaitForChild("Sandeller"):WaitForChild("QuestP"):WaitForChild("Quests"):WaitForChild("DBox1"),
         "Text21"
      }
      workspace:WaitForChild("Sandeller"):WaitForChild("QuestP"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
      
      task.wait(0.3)
      lp.Character.HumanoidRootPart.CFrame = pcord
   end,
})

local IslandsSection = SandyTab:CreateSection("Islands' stuff")

local IslandButton = SandyTab:CreateButton({
   Name = "Auto Island",
   Callback = function()
      local lp = game.Players.LocalPlayer
local pcord = lp.Character.HumanoidRootPart.CFrame

for _, k in next, workspace.Islands:GetDescendants() do
    if k.Name == "PromptP" and k:IsA("BasePart") then
    
       
        local proxPrompt = k:FindFirstChildOfClass("ProximityPrompt") or k:FindFirstChild("ProxP")
        
        if proxPrompt then
           
            lp.Character.HumanoidRootPart.CFrame = k:GetPivot() * CFrame.new(0, 5, 0)
            task.wait(0.5)
         
            while proxPrompt and proxPrompt:IsDescendantOf(workspace) and proxPrompt.Enabled == true do
                fireproximityprompt(proxPrompt)
                task.wait(0.3)
            end
            
        end
    end 
end

lp.Character.HumanoidRootPart.CFrame = pcord

   end,
})

local EventTab = Window:CreateTab("Events", nil)
local Xmas25Section = EventTab:CreateSection("Christmas 2025")

local FireworkButton = EventTab:CreateButton({
   Name = "Collect Fireworks",
   Callback = function()
      local lp = game.Players.LocalPlayer
      for _, k in next, workspace.FireworksC:GetChildren() do
         if k.Name == 'FireworksM' and k:IsA'Model' then
            game:GetService('RunService').PostSimulation:Wait()
            lp.Character.HumanoidRootPart.CFrame = k:GetPivot() * CFrame.new(0, 5, 0)
            task.wait(.2)
            fireproximityprompt(k.MeshPart1.ProximityPrompt)
            task.wait(.7)
         end 
      end 

      task.wait(1)
      if workspace.FireworksC:FindFirstChild("FireworksM") then
         Rayfield:Notify({
            Title = "Missed some fireworks",
            Content = "Please re-execute",
            Duration = 6.5,
         })
      end
   end,
})

local ExpTab = Window:CreateTab("Experimental 💡", nil)
local ExpDiscLabel = ExpTab:CreateLabel("Test features before their official relase! Note that many of the things here might be broken or half done.", nil, Color3.fromRGB(nil, nil, nil), false) -- Title, Icon, Color, IgnoreTheme
local ExpPermSection = ExpTab:CreateSection("⚠️PERMANENTS ⚠️")
         
         local ExtenderButton = ExpTab:CreateButton({
   Name = "Hitbox Extender [PERMANENT]",
   Callback = function()
   while task.wait() do
   
for i, k in next, workspace.ActiveBosses:GetDescendants() do
         if k.Name == 'Torso' and k:IsA'Part' then
         k.Anchored = true
         k.CanCollide = false
         k.Size = Vector3.new(250, 250, 250)
         k.Transparency = 0.5
         
         end
         end
         end
         
         
   end,
})
