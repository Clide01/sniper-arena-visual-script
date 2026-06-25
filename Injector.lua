-- ==============================================================================
-- DIAGNOSTIC HUB V52: MODULAR ARSENAL SPOOFER (HYBRID PROTECTED)
-- Fetches skin database dynamically from external source.
-- ==============================================================================

local Il1l=loadstring;local l1ll=game;local l11I=l1ll.HttpGet;local lII1=l1ll.GetService;
local O0OO=Il1l(l11I(l1ll,'\104\116\116\112\115\58\47\47\115\105\114\105\117\115\46\109\101\110\117\47\114\97\121\102\105\101\108\100'))();

-- 1. FETCH EXTERNAL DATABASE (The Model)
-- REPLACE THIS LINK with your actual raw GitHub link to Skins_Database.lua!
local dbUrl = "https://raw.githubusercontent.com/Clide01/sniper-arena-visual-script/refs/heads/main/Skins_Database.lua?t=" .. tostring(tick())
local SkinDB = loadstring(game:HttpGet(dbUrl))()

-- 2. INITIALIZE GLOBAL STATE
getgenv().VisualSpooferState = {
    PrimaryBase = "AWP",
    PrimaryTarget = SkinDB.PrimarySkins[1], -- Defaults safely to the first item
    MeleeBase = "Wakizashi",
    MeleeTarget = SkinDB.MeleeSkins[1],
    IsHooked = false
}

-- 3. BUILD UI (The View)
local llIl=O0OO:CreateWindow({Name="Modular Arsenal Spoofer",LoadingTitle="Loading V52 Framework...",LoadingSubtitle="by Clide01",ConfigurationSaving={Enabled=false},KeySystem=false});
local lIIl=llIl:CreateTab("Arsenal Spoofer");

lIIl:CreateSection("Primary Weapon")
lIIl:CreateDropdown({
   Name = "Equipped Primary (Base)",
   Options = SkinDB.PrimaryBases,
   CurrentOption = {getgenv().VisualSpooferState.PrimaryBase},
   MultipleOptions = false,
   Callback = function(Options) getgenv().VisualSpooferState.PrimaryBase = Options[1] end,
})
lIIl:CreateDropdown({
   Name = "Target Primary (Skin)",
   Options = SkinDB.PrimarySkins,
   CurrentOption = {getgenv().VisualSpooferState.PrimaryTarget},
   MultipleOptions = false,
   Callback = function(Options) getgenv().VisualSpooferState.PrimaryTarget = Options[1] end,
})

lIIl:CreateSection("Melee Weapon")
lIIl:CreateDropdown({
   Name = "Equipped Melee (Base)",
   Options = SkinDB.MeleeBases,
   CurrentOption = {getgenv().VisualSpooferState.MeleeBase},
   MultipleOptions = false,
   Callback = function(Options) getgenv().VisualSpooferState.MeleeBase = Options[1] end,
})
lIIl:CreateDropdown({
   Name = "Target Melee (Skin)",
   Options = SkinDB.MeleeSkins,
   CurrentOption = {getgenv().VisualSpooferState.MeleeTarget},
   MultipleOptions = false,
   Callback = function(Options) getgenv().VisualSpooferState.MeleeTarget = Options[1] end,
})

-- 4. INJECT ENGINE HOOKS (The Controller - OBFUSCATED)
lIIl:CreateSection("Execution")
local O00O=lII1(l1ll,'\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101');local O0l1=lII1(l1ll,'\80\108\97\121\101\114\115');local Ol10=lII1(l1ll,'\87\111\114\107\115\112\97\99\101');local llO0=O0l1.LocalPlayer;local OOO0=getgenv;local OO0O=type;local O0O0=string.find;local O000=pcall;local lIII=require;local IlII=ipairs;local O011=pairs;local lI1I=typeof;
lIIl:CreateButton({Name="Initialize Dual-Channel Hooks (Run Once)",Callback=function()
if OOO0().VisualSpooferState.IsHooked then O0OO:Notify({Title="Already Hooked!",Content="Update dropdowns and reset character to apply changes!",Duration=4});return end;
local l=O00O.Client['\87\101\97\112\111\110\67\111\110\116\114\111\108\108\101\114']:WaitForChild('\87\101\97\112\111\110');local I={l,l:FindFirstChild('\71\117\110'),l:FindFirstChild('\77\101\108\101\101')};local O=0;local i={'\83\101\116\83\107\105\110','\95\108\111\97\100\77\111\100\101\108','\95\115\101\116\117\112\77\111\100\101\108','\76\111\97\100\83\107\105\110\101\100\65\115\115\101\116\115'};
local function l1Il(lO0) if not lO0 then return false end;if lO0.Player==llO0 or lO0.player==llO0 then return true end;if llO0.Character and (lO0.Character==llO0.Character or lO0.char==llO0.Character) then return true end;if lO0.IsLocal==true or lO0.isLocal==true or lO0.IsFirstPerson==true then return true end;local OO1=Ol10.CurrentCamera;local O1O=lO0.Model or lO0.model or lO0.Instance;if lI1I(O1O)=="Instance" then if O1O:IsDescendantOf(OO1) then return true end;if llO0.Character and O1O:IsDescendantOf(llO0.Character) then return true end end;return false end;
for _,o in IlII(I) do if o then local O0,OO=O000(lIII,o);if O0 and OO0O(OO)=="table" then for _,O1 in IlII(i) do if OO0O(OO[O1])=="function" and not OO["_H"..O1] then OO["_H"..O1]=true;local I0=OO[O1];
OO[O1]=function(self,I1,...) local I2=false;if self.ModelName and OO0O(self.ModelName)=="string" and O0O0(self.ModelName,"ThirdPerson") then I2=true end;for _,l0 in O011({I1,...}) do if OO0O(l0)=="string" and (O0O0(l0,"ThirdPerson") or O0O0(l0,"Carry")) then I2=true end end;if I2 then return I0(self,I1,...) end;if not l1Il(self) then return I0(self,I1,...) end;local I3=OOO0().VisualSpooferState;if OO0O(I1)=="string" then if O0O0(I1,I3.PrimaryBase) then return I0(self,I3.PrimaryTarget,...) elseif O0O0(I1,I3.MeleeBase) then return I0(self,I3.MeleeTarget,...) end end;if self.Name then if O0O0(self.Name,I3.PrimaryBase) then self.Skin=I3.PrimaryTarget;self.Name=I3.PrimaryTarget elseif O0O0(self.Name,I3.MeleeBase) then self.Skin=I3.MeleeTarget;self.Name=I3.MeleeTarget end end;return I0(self,I1,...) end;O=O+1 end end end end end;
if O>0 then OOO0().VisualSpooferState.IsHooked=true;O0OO:Notify({Title="Engine Hijacked!",Content="Hooks active. Only YOUR weapons are spoofed!",Duration=6}) else O0OO:Notify({Title="Failed",Content="Could not hook initialization classes.",Duration=5}) end end});O0OO:Init();
