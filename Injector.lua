-- ==============================================================================
-- DIAGNOSTIC HUB V56: MODULAR ARSENAL SPOOFER (HYBRID PROTECTED)
-- Patched: Early-return bug fixed. Uses Temporary Identity Spoofing for Melee.
-- ==============================================================================

local Il1l=loadstring;local l1ll=game;local l11I=l1ll.HttpGet;local lII1=l1ll.GetService;
local O0OO=Il1l(l11I(l1ll,'\104\116\116\112\115\58\47\47\115\105\114\105\117\115\46\109\101\110\117\47\114\97\121\102\105\101\108\100'))();

-- 1. FETCH EXTERNAL DATABASE
local dbUrl = "https://raw.githubusercontent.com/Clide01/sniper-arena-visual-script/refs/heads/main/Skins_Database.lua?t=" .. tostring(tick())
local SkinDB = loadstring(game:HttpGet(dbUrl))()

-- 2. INITIALIZE GLOBAL STATE
getgenv().VisualSpooferState = {
    PrimaryBase = "AWP",
    PrimaryTarget = SkinDB.PrimarySkins[1],
    MeleeBase = "Wakizashi",
    MeleeTarget = SkinDB.MeleeSkins[1],
    IsHooked = false
}

-- 3. BUILD UI (The View)
local llIl=O0OO:CreateWindow({Name="Modular Arsenal Spoofer",LoadingTitle="Loading V56 Framework...",LoadingSubtitle="by Clide01",ConfigurationSaving={Enabled=false},KeySystem=false});
local lIIl=llIl:CreateTab("Arsenal Spoofer");

-- [SECTION: PRIMARY WEAPON]
lIIl:CreateSection("Primary Weapon")
lIIl:CreateDropdown({
   Name = "Equipped Primary (Base)",
   Options = SkinDB.PrimaryBases,
   CurrentOption = {getgenv().VisualSpooferState.PrimaryBase},
   MultipleOptions = false,
   Callback = function(Options) getgenv().VisualSpooferState.PrimaryBase = Options[1] end,
})

local PrimaryDropdown 
lIIl:CreateInput({
   Name = "Search Primary Skins",
   PlaceholderText = "Type to filter...",
   Callback = function(Text)
       local filtered = {}
       local query = string.lower(Text)
       for _, skin in ipairs(SkinDB.PrimarySkins) do
           if string.find(string.lower(skin), query) then table.insert(filtered, skin) end
       end
       if #filtered == 0 then table.insert(filtered, "No Results") end
       if PrimaryDropdown then PrimaryDropdown:Refresh(filtered, true) end
   end,
})

PrimaryDropdown = lIIl:CreateDropdown({
   Name = "Target Primary (Skin)",
   Options = SkinDB.PrimarySkins,
   CurrentOption = {getgenv().VisualSpooferState.PrimaryTarget},
   MultipleOptions = false,
   Callback = function(Options) if Options[1] ~= "No Results" then getgenv().VisualSpooferState.PrimaryTarget = Options[1] end end,
})

-- [SECTION: MELEE WEAPON]
lIIl:CreateSection("Melee Weapon")
lIIl:CreateDropdown({
   Name = "Equipped Melee (Base)",
   Options = SkinDB.MeleeBases,
   CurrentOption = {getgenv().VisualSpooferState.MeleeBase},
   MultipleOptions = false,
   Callback = function(Options) getgenv().VisualSpooferState.MeleeBase = Options[1] end,
})

local MeleeDropdown
lIIl:CreateInput({
   Name = "Search Melee Skins",
   PlaceholderText = "Type to filter...",
   Callback = function(Text)
       local filtered = {}
       local query = string.lower(Text)
       for _, skin in ipairs(SkinDB.MeleeSkins) do
           if string.find(string.lower(skin), query) then table.insert(filtered, skin) end
       end
       if #filtered == 0 then table.insert(filtered, "No Results") end
       if MeleeDropdown then MeleeDropdown:Refresh(filtered, true) end
   end,
})

MeleeDropdown = lIIl:CreateDropdown({
   Name = "Target Melee (Skin)",
   Options = SkinDB.MeleeSkins,
   CurrentOption = {getgenv().VisualSpooferState.MeleeTarget},
   MultipleOptions = false,
   Callback = function(Options) if Options[1] ~= "No Results" then getgenv().VisualSpooferState.MeleeTarget = Options[1] end end,
})

-- 4. INJECT ENGINE HOOKS (The Controller - OBFUSCATED & PATCHED)
lIIl:CreateSection("Execution")
local O00O=lII1(l1ll,'\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101');local O0l1=lII1(l1ll,'\80\108\97\121\101\114\115');local Ol10=lII1(l1ll,'\87\111\114\107\115\112\97\99\101');local llO0=O0l1.LocalPlayer;local OOO0=getgenv;local OO0O=type;local O0O0=string.find;local O000=pcall;local lIII=require;local IlII=ipairs;local O011=pairs;local lI1I=typeof;
lIIl:CreateButton({Name="Initialize Dual-Channel Hooks (Run Once)",Callback=function()
if OOO0().VisualSpooferState.IsHooked then O0OO:Notify({Title="Already Hooked!",Content="Update dropdowns and reset character to apply changes!",Duration=4});return end;
local l=O00O.Client['\87\101\97\112\111\110\67\111\110\116\114\111\108\108\101\114']:WaitForChild('\87\101\97\112\111\110');local I={l,l:FindFirstChild('\71\117\110'),l:FindFirstChild('\77\101\108\101\101')};local O=0;local i={'\83\101\116\83\107\105\110','\95\108\111\97\100\77\111\100\101\108','\95\115\101\116\117\112\77\111\100\101\108','\76\111\97\100\83\107\105\110\101\100\65\115\115\101\116\115'};
for _,o in IlII(I) do if o then local O0,OO=O000(lIII,o);if O0 and OO0O(OO)=="table" then for _,O1 in IlII(i) do if OO0O(OO[O1])=="function" and not OO["_H"..O1] then OO["_H"..O1]=true;local I0=OO[O1];
OO[O1]=function(self,I1,...) 
    local I2=false;if self.ModelName and OO0O(self.ModelName)=="string" and O0O0(self.ModelName,"ThirdPerson") then I2=true end;
    for _,l0 in O011({I1,...}) do if OO0O(l0)=="string" and (O0O0(l0,"ThirdPerson") or O0O0(l0,"Carry")) then I2=true end end;
    local O1O=self.Model or self.model or self.Instance or self.WeaponModel;
    if lI1I(O1O)=="Instance" then local lO0=O1O:FindFirstAncestorWhichIsA("Model");if lO0 and lO0:FindFirstChild("Humanoid") and lO0.Name~=llO0.Name then I2=true end end;
    
    if I2 then return I0(self,I1,...) end;
    
    local I3=OOO0().VisualSpooferState;
    local spoofedArg = I1;
    
    if OO0O(I1)=="string" then 
        if O0O0(I1,I3.PrimaryBase) then spoofedArg=I3.PrimaryTarget 
        elseif O0O0(I1,I3.MeleeBase) then spoofedArg=I3.MeleeTarget end 
    end;
    
    local oldName = self.Name;
    if self.Name then 
        if O0O0(self.Name,I3.PrimaryBase) then self.Skin=I3.PrimaryTarget;self.Name=I3.PrimaryTarget; 
        elseif O0O0(self.Name,I3.MeleeBase) then self.Skin=I3.MeleeTarget;self.Name=I3.MeleeTarget; end 
    end;
    
    local ret = I0(self,spoofedArg,...);
    
    if oldName then self.Name = oldName; end;
    
    return ret;
end;O=O+1 end end end end end;
if O>0 then OOO0().VisualSpooferState.IsHooked=true;O0OO:Notify({Title="Engine Hijacked!",Content="Hooks active. Only YOUR weapons are spoofed!",Duration=6}) else O0OO:Notify({Title="Failed",Content="Could not hook initialization classes.",Duration=5}) end end});O0OO:Init();
