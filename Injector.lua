-- ==============================================================================
-- DIAGNOSTIC HUB V47: DUAL-CHANNEL (LOCAL-ONLY) [OBFUSCATED]
-- ==============================================================================

local Il1l=loadstring;local l1ll=game;local l11I=l1ll.HttpGet;local lII1=l1ll.GetService;local O0OO=Il1l(l11I(l1ll,'\104\116\116\112\115\58\47\47\115\105\114\105\117\115\46\109\101\110\117\47\114\97\121\102\105\101\108\100'))();
local O00O=lII1(l1ll,'\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101');
local O0l1=lII1(l1ll,'\80\108\97\121\101\114\115');
local Ol10=lII1(l1ll,'\87\111\114\107\115\112\97\99\101');
local llO0=O0l1.LocalPlayer;
local OOO0=getgenv;local OO0O=type;local O0O0=string.find;local O000=pcall;local lIII=require;local IlII=ipairs;local lI1I=typeof;

OOO0().VisualSpooferState={PrimaryBase="AWP",PrimaryTarget="Exotic.TT_S2.Sniper1",MeleeBase="Wakizashi",MeleeTarget="Exotic.RGB.NeonCore.Wakizashi",IsHooked=false};

local llIl=O0OO:CreateWindow({Name="Dual-Channel Injector",LoadingTitle="Loading V47 Framework...",LoadingSubtitle="by Clide01",ConfigurationSaving={Enabled=false},KeySystem=false});
local lIIl=llIl:CreateTab("Primary");local IllI=llIl:CreateTab("Melee");local lIlI=llIl:CreateTab("Execute");

local I1I1={"AWP","SSG","WA2000","Specter","M200","M82A1","NTW20","Kar98k","DSR1","Crossbow"};
local I11I={"ClassKnife","Wakizashi","ButterflyKnife","Karambit","Bayonet","Bayonet_M9","ShadowDaggers","Glove","Axe","Kukri","FlipKnife","OutDoorKnife","Falchion","TacticalKnife","GutKnife","CordKnife","CrookSword","Stiletto","Skeleton","Shovel","Bowie"};
local II1I={"Exotic.TT_S2.Sniper1","Exotic.TT_S2.Sniper1_Theme1","Exotic.TT_S2.Sniper1_Theme2","Exotic.TT_S2.Sniper1_Theme3","Exotic.TT_S2.Sniper1_Pink","Exotic.TT_S2.Sniper1_Cyan","Exotic.RGB.TT_S2.Sniper1","Exotic.RGB.Apocalypse.AWP","Exotic.RGB.Apocalypse.Specter","Exotic.RGB.NeonCore.AWP","Exotic.RGB.NeonCore.SSG","Exotic.NeonCore_Holo.AWP","Exotic.NeonCore_Cyan.AWP","Exotic.NeonCore_Purple.AWP","Exotic.RGB.Starry.AWP","Exotic.RGB.Starry.Kar98k","Exotic.RGB.Starry.M200","Exotic.RGB.Starry.M82A1","Exotic.Starlight.AWP","Exotic.Starveil.AWP","Exotic.Starfade.SSG","Exotic.Starry.WA2000","Exotic.Starry.NTW20","Exotic.Watcher.AWP","Exotic.Watcher.M82A1","Exotic.RGB.Eternium.SSG","Exotic.RGB.Eternium.M200","Exotic.RGB.Lumen.M82A1","Exotic.AbyssPrism.M82A1","Exotic.ObsidianGild.M82A1","Exotic.Umbra.M82A1","Exotic.Bloodmoon.M82A1","Exotic.SteamRedvalve.M82A1","Exotic.SteamRedvalve.M200","Exotic.Flarion.M200","Exotic.Flarion.SSG"};
local III1={"Exotic.TT_S2.PrismTwins","Exotic.TT_S2.PrismTwins_Theme1","Exotic.TT_S2.PrismTwins_Theme2","Exotic.TT_S2.PrismTwins_Theme3","Exotic.TT_S2.PrismTwins_Pink","Exotic.TT_S2.PrismTwins_Cyan","Exotic.RGB.TT_S2.PrismTwins","Exotic.TT_S2.Glove","Exotic.TT_S2.Glove_Theme1","Exotic.TT_S2.Glove_Theme2","Exotic.TT_S2.Glove_Theme3","Exotic.TT_S2.Glove_Pink","Exotic.TT_S2.Glove_Cyan","Exotic.RGB.TT_S2.Glove","Exotic.RGB.Apocalypse.Chainsaw","Exotic.RGB.Apocalypse.Glove","Exotic.RGB.NeonCore.Wakizashi","Exotic.RGB.NeonCore.Glove","Exotic.RGB.NeonCore.Axe","Exotic.RGB.Starry.Bayonet_M9","Exotic.RGB.Starry.Axe","Exotic.RGB.Starry.CordKnife","Exotic.RGB.Starry.Karambit","Exotic.RGB.Starry.Glove","Exotic.RGB.Starry.ButterflyKnife","Exotic.RGB.Starry.Wakizashi","Exotic.RGB.Watcher.Glove","Exotic.RGB.Watcher.Karambit","Exotic.RGB.Eternium.Glove","Exotic.RGB.Eternium.FlipKnife","Exotic.RGB.Luna.Glove","Exotic.RGB.Luna.ButterflyKnife","Exotic.RGB.Ashrend.Kukri","Exotic.RGB.Fools2026.Lollipop","Exotic.RGB.ScalySawTeeth","Exotic.ScalySawTeeth","Exotic.Kukri.Ashrend","Exotic.SteamRedvalve.Glove","Exotic.SteamRedvalve.Bayonet_M9","Exotic.AbyssPrism.Glove","Exotic.AbyssPrism.Axe","Exotic.Starlight.Glove","Exotic.Starlight.Karambit","Exotic.ObsidianGild.Glove","Exotic.ObsidianGild.Axe","Exotic.Umbra.Glove","Exotic.Umbra.ButterflyKnife","Exotic.Bloodmoon.Glove","Exotic.Bloodmoon.ButterflyKnife","Exotic.Starfade.Glove","Exotic.Starfade.Karambit","Exotic.Flarion.Glove","Exotic.Flarion.FlipKnife"};

lIIl:CreateDropdown({Name="Equipped Primary (Base)",Options=I1I1,CurrentOption={OOO0().VisualSpooferState.PrimaryBase},MultipleOptions=false,Callback=function(I) OOO0().VisualSpooferState.PrimaryBase=I[1] end});
lIIl:CreateDropdown({Name="Target Primary (Skin)",Options=II1I,CurrentOption={OOO0().VisualSpooferState.PrimaryTarget},MultipleOptions=false,Callback=function(I) OOO0().VisualSpooferState.PrimaryTarget=I[1] end});
IllI:CreateDropdown({Name="Equipped Melee (Base)",Options=I11I,CurrentOption={OOO0().VisualSpooferState.MeleeBase},MultipleOptions=false,Callback=function(I) OOO0().VisualSpooferState.MeleeBase=I[1] end});
IllI:CreateDropdown({Name="Target Melee (Skin)",Options=III1,CurrentOption={OOO0().VisualSpooferState.MeleeTarget},MultipleOptions=false,Callback=function(I) OOO0().VisualSpooferState.MeleeTarget=I[1] end});

local function l1Il(lO0) if not lO0 then return false end;if lO0.Player==llO0 or lO0.player==llO0 then return true end;if llO0.Character and (lO0.Character==llO0.Character or lO0.char==llO0.Character) then return true end;if lO0.IsLocal==true or lO0.isLocal==true or lO0.IsFirstPerson==true then return true end;local OO1=Ol10.CurrentCamera;local O1O=lO0.Model or lO0.model or lO0.Instance;if lI1I(O1O)=="Instance" then if O1O:IsDescendantOf(OO1) then return true end;if llO0.Character and O1O:IsDescendantOf(llO0.Character) then return true end end;return false end;

lIlI:CreateButton({Name="Initialize Dual-Channel Hooks (Run Once)",Callback=function()
if OOO0().VisualSpooferState.IsHooked then O0OO:Notify({Title="Already Hooked!",Content="Update dropdowns and reset character to apply changes!",Duration=4});return end;
local l=O00O.Client['\87\101\97\112\111\110\67\111\110\116\114\111\108\108\101\114']:WaitForChild('\87\101\97\112\111\110');
local I={l,l:FindFirstChild('\71\117\110'),l:FindFirstChild('\77\101\108\101\101')};
local O=0;local i={'\83\101\116\83\107\105\110','\95\108\111\97\100\77\111\100\101\108','\95\115\101\116\117\112\77\111\100\101\108','\76\111\97\100\83\107\105\110\101\100\65\115\115\101\116\115'};
for _,o in IlII(I) do if o then local O0,OO=O000(lIII,o);if O0 and OO0O(OO)=="table" then for _,O1 in IlII(i) do if OO0O(OO[O1])=="function" and not OO["_Hooked"..O1] then OO["_Hooked"..O1]=true;local I0=OO[O1];
OO[O1]=function(self,I1,...) if l1Il(self) then local I2=OOO0().VisualSpooferState;if OO0O(I1)=="string" then if O0O0(I1,I2.PrimaryBase) then return I0(self,I2.PrimaryTarget,...) elseif O0O0(I1,I2.MeleeBase) then return I0(self,I2.MeleeTarget,...) end end;if self.Name then if O0O0(self.Name,I2.PrimaryBase) then self.Skin=I2.PrimaryTarget;self.Name=I2.PrimaryTarget elseif O0O0(self.Name,I2.MeleeBase) then self.Skin=I2.MeleeTarget;self.Name=I2.MeleeTarget end end end;return I0(self,I1,...) end;O=O+1 end end end end end;
if O>0 then OOO0().VisualSpooferState.IsHooked=true;O0OO:Notify({Title="Engine Hijacked!",Content="Hooks active. Only YOUR weapons are spoofed!",Duration=6}) else O0OO:Notify({Title="Failed",Content="Could not hook initialization classes.",Duration=5}) end end});O0OO:Init();
