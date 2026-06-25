-- ==============================================================================
-- DIAGNOSTIC HUB V51: MASTER ARSENAL SPOOFER (HYBRID PROTECTED)
-- Protected Engine Hooks | Local-Only Rendering | Delta-Optimized
-- ==============================================================================

local Il1l=loadstring;local l1ll=game;local l11I=l1ll.HttpGet;local lII1=l1ll.GetService;
local O0OO=Il1l(l11I(l1ll,'\104\116\116\112\115\58\47\47\115\105\114\105\117\115\46\109\101\110\117\47\114\97\121\102\105\101\108\100'))();
local O00O=lII1(l1ll,'\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101');
local O0l1=lII1(l1ll,'\80\108\97\121\101\114\115');
local Ol10=lII1(l1ll,'\87\111\114\107\115\112\97\99\101');
local llO0=O0l1.LocalPlayer;
local OOO0=getgenv;local OO0O=type;local O0O0=string.find;local O000=pcall;local lIII=require;local IlII=ipairs;local O011=pairs;local lI1I=typeof;

OOO0().VisualSpooferState = {
    PrimaryBase = "AWP",
    PrimaryTarget = "Exotic.RGB.Apocalypse.AWP",
    MeleeBase = "Wakizashi",
    MeleeTarget = "Exotic.RGB.NeonCore.Wakizashi",
    IsHooked = false
}

local llIl=O0OO:CreateWindow({Name="Master Arsenal Spoofer",LoadingTitle="Loading V51 Framework...",LoadingSubtitle="by Developer",ConfigurationSaving={Enabled=false},KeySystem=false});
local lIIl=llIl:CreateTab("Arsenal Spoofer");

-- ==============================================================================
-- UNENCRYPTED DATA ARRAYS (PREVENTS MOBILE RAM BLOAT)
-- ==============================================================================
local primaryBases = {
    "AWP", "SSG", "WA2000", "Specter", "M200", "M82A1", "NTW20", "Kar98k", "DSR1", "Crossbow", "AK47"
}

local meleeBases = {
    "ClassKnife", "Wakizashi", "ButterflyKnife", "Karambit", "Bayonet", "Bayonet_M9", 
    "ShadowDaggers", "Glove", "Axe", "Kukri", "FlipKnife", "OutDoorKnife", "Falchion", 
    "TacticalKnife", "GutKnife", "CordKnife", "CrookSword", "Stiletto", "Skeleton", "Shovel", "Bowie"
}

local primarySkins = {
    "Exotic.RGB.Starry.Crossbow", "Exotic.RGB.Starry.M200", "Exotic.RGB.Steam.M82A1", "Exotic.RGB.Steam.M200", 
    "Exotic.RGB.NeonCore.M82A1", "Exotic.RGB.NeonCore.Kar98k", "Exotic.RGB.Starry.M82A1", "Exotic.RGB.Starry.WA2000", 
    "Exotic.RGB.Starry.NTW20", "Exotic.RGB.Starry.DSR1", "Exotic.RGB.Starry.AWP", "Exotic.RGB.Starry.Kar98k", 
    "Exotic.RGB.Watcher.M82A1", "Exotic.RGB.Watcher.AWP", "Exotic.RGB.Eternium.M200", "Exotic.RGB.Eternium.SSG", 
    "Exotic.RGB.Lumen.M82A1", "Exotic.RGB.Apocalypse.Specter", "Exotic.Apocalypse.Specter", "Exotic.Apocalypse_Cyan.Specter", 
    "Exotic.RGB.Apocalypse.AWP", "Exotic.Apocalypse.AWP", "Exotic.Apocalypse_Cyan.AWP", "Exotic.NeonCore_Holo.SSG", 
    "Exotic.NeonCore_Cyan.SSG", "Exotic.NeonCore_Purple.SSG", "Exotic.RGB.NeonCore.SSG", "Exotic.NeonCore_Holo.AWP", 
    "Exotic.NeonCore_Cyan.AWP", "Exotic.NeonCore_Purple.AWP", "Exotic.RGB.NeonCore.AWP", "Exotic.Starlight.SSG", 
    "Exotic.Starfade.SSG", "Exotic.Starry.SSG", "Exotic.Starveil.SSG", "Exotic.Starry.Crossbow", "Exotic.Starfade.Crossbow", 
    "Exotic.Starlight.Crossbow", "Exotic.Starveil.Crossbow", "Exotic.NightHunt_Color2.Crossbow", "Exotic.Starry.M200", 
    "Exotic.Starfade.M200", "Exotic.Starlight.M200", "Exotic.Starveil.M200", "Exotic.Starveil.M82A1", "Exotic.Starveil.AWP", 
    "Exotic.Starveil.Kar98k", "Exotic.Starveil.DSR1", "Exotic.Starveil.NTW20", "Exotic.Starveil.WA2000", "Exotic.Starry.WA2000", 
    "Exotic.Starry.NTW20", "Exotic.Starry.DSR1", "Exotic.Starfade.WA2000", "Exotic.Starfade.NTW20", "Exotic.Starfade.DSR1", 
    "Exotic.Starlight.WA2000", "Exotic.Starlight.NTW20", "Exotic.Starlight.DSR1", "Exotic.Watcher.M82A1", "Exotic.Watcher.AWP", 
    "Exotic.Starry.AWP", "Exotic.Starry.Kar98k", "Exotic.Starlight.AWP", "Exotic.Starlight.Kar98k", "Exotic.Starfade.AWP", 
    "Exotic.Starfade.Kar98k", "Exotic.SteamRedvalve.M82A1", "Exotic.SteamRedvalve.M200", "Exotic.AbyssPrism.M82A1", 
    "Exotic.AbyssPrism.Kar98k", "Exotic.Starlight.M82A1", "Exotic.ObsidianGild.M82A1", "Exotic.ObsidianGild.Kar98k", 
    "Exotic.Umbra.M82A1", "Exotic.Bloodmoon.M82A1", "Exotic.Starfade.M82A1", "Exotic.Flarion.M200", "Exotic.Flarion.SSG", 
    "Exotic.LegacyBase.Specter", "Exotic.Marble_Violet.Specter", "Exotic.Aluminum_Red.Specter", "Exotic.Copper_Leaf.Specter", 
    "Exotic.CarbonFiber.Specter", "Exotic.Strike_ArsenicSpill.Specter", "Exotic.BlackLava.Specter", "Exotic.ColorBlue.Specter", 
    "Exotic.ColorGreen.Specter", "Exotic.ForumViolet_CaliforniaGold1.Specter", "Exotic.Graffiti1.Specter", "Exotic.MilkyWay1.Specter", 
    "Exotic.MilkyWay3.Specter", "Exotic.Rock_Opal.Specter", "Exotic.Sliver_Leaf_Black.Specter", "Exotic.Wood.Specter", 
    "Exotic.Zebra1.Specter", "Exotic.Rock_Ice.Specter", "Exotic.Strike_CMYK.Specter", "Exotic.Strike_Fade.Specter", 
    "Exotic.Strike_ChromeCannon.Specter", "Exotic.Strike_Printstream.Specter", "Exotic.Strike_Gambit.Specter", "Exotic.Strike_IceCoaled.Specter", 
    "Exotic.Strike_Crakow.Specter", "Exotic.Strike_GreenEnergy.Specter", "Exotic.Strike_LongDog.Specter", "Exotic.Strike_TheEnd.Specter", 
    "Exotic.Strike_Exothermic.Specter", "Exotic.Strike_SnakeCamo.Specter", "Exotic.Strike_SafariMesh.Specter", "Exotic.HDBase.Specter", 
    "Exotic.Base.Specter", "Exotic.Strike_FireSerpent.Specter", "Exotic.Strike_Howl.Specter", "Exotic.Strike_HoloTitan.Specter", 
    "Exotic.Flower_Viola.Specter", "Exotic.Flower_Rose.Specter", "Exotic.Base.SSG", "Exotic.LegacyBase.SSG", "Exotic.HDBase.SSG", 
    "Exotic.Strike_Abyss.SSG", "Exotic.Strike_AcidFade.SSG", "Exotic.Strike_AzureGlyph.SSG", "Exotic.Strike_BigIron.SSG", 
    "Exotic.Strike_BloodintheWater.SSG", "Exotic.Strike_Bloodshot.SSG", "Exotic.Strike_BlueSpruce.SSG", "Exotic.Strike_BlushPour.SSG", 
    "Exotic.Strike_CarbonFiber.SSG", "Exotic.Strike_DarkWater.SSG", "Exotic.Strike_DeathStrike.SSG", "Exotic.Strike_DeathHead.SSG", 
    "Exotic.Strike_Detour.SSG", "Exotic.Strike_Dezastre.SSG", "Exotic.Strike_Dragonfire.SSG", "Exotic.Strike_FeverDream.SSG", 
    "Exotic.Strike_GhostCrusader.SSG", "Exotic.Strike_GreenCeramic.SSG", "Exotic.Strike_GreySmoke.SSG", "Exotic.Strike_HalftoneWhorl.SSG", 
    "Exotic.Strike_HandBrake.SSG", "Exotic.Strike_JungleDashed.SSG", "Exotic.Strike_LichenDashed.SSG", "Exotic.Strike_Mainframe001.SSG", 
    "Exotic.Strike_MayanDreams.SSG", "Exotic.Strike_Memorial.SSG", "Exotic.Strike_Necropos.SSG", "Exotic.Strike_OrangeFiligree.SSG", 
    "Exotic.Strike_Parallax.SSG", "Exotic.Strike_Prey.SSG", "Exotic.Strike_RapidTransit.SSG", "Exotic.Strike_RedStone.SSG", 
    "Exotic.Strike_SandDune.SSG", "Exotic.Strike_SeaCalico.SSG", "Exotic.Strike_Slashed.SSG", "Exotic.Strike_SpringTwilly.SSG", 
    "Exotic.Strike_ThreatDetected.SSG", "Exotic.Strike_TigerTear.SSG", "Exotic.Strike_TropicalStorm.SSG", "Exotic.Strike_TurboPeek.SSG", 
    "Exotic.Strike_Zeno.SSG", "Exotic.Zebra1.SSG", "Exotic.Wood.SSG", "Exotic.Sliver_Leaf_Black.SSG", "Exotic.Rock_Opal.SSG", 
    "Exotic.Rock_Ice.SSG", "Exotic.MilkyWay3.SSG", "Exotic.MilkyWay1.SSG", "Exotic.Marble_Violet.SSG", "Exotic.Graffiti1.SSG", 
    "Exotic.ForumViolet_CaliforniaGold1.SSG", "Exotic.Copper_Leaf.SSG", "Exotic.ColorGreen.SSG", "Exotic.ColorBlue.SSG", 
    "Exotic.CarbonFiber.SSG", "Exotic.BlackLava.SSG", "Exotic.Aluminum_Red.SSG", "Exotic.Strike_Calligrafaux.SSG", 
    "Exotic.Strike_SansComic.SSG", "Exotic.BP_S1_Meander.SSG", "Exotic.BP_S1_Rose.SSG", "Exotic.BP_S2_Shatterline.SSG", 
    "Exotic.BP_S2_Sigil.SSG", "Exotic.Ranked_S1_Bronze.SSG", "Exotic.Ranked_S1_Diamond.SSG", "Exotic.Ranked_S1_Gold.SSG", 
    "Exotic.Ranked_S1_Master.SSG", "Exotic.Ranked_S1_Platinum.SSG", "Exotic.Ranked_S1_Silver.SSG", "Exotic.BP_S3_Egg.SSG", 
    "Exotic.BP_S3_Bunny.SSG", "Exotic.Ranked_S2_Bronze.SSG", "Exotic.Ranked_S2_Diamond.SSG", "Exotic.Ranked_S2_Gold.SSG", 
    "Exotic.Ranked_S2_Master.SSG", "Exotic.Ranked_S2_Platinum.SSG", "Exotic.Ranked_S2_Silver.SSG", "Exotic.Ranked_S2_Silver_S4.SSG", 
    "Exotic.Ranked_S2_Platinum_S4.SSG", "Exotic.Ranked_S2_Master_S4.SSG", "Exotic.Ranked_S2_Gold_S4.SSG", "Exotic.Ranked_S2_Diamond_S4.SSG", 
    "Exotic.Ranked_S2_Bronze_S4.SSG", "Exotic.Ranked_S1_Silver_S4.SSG", "Exotic.Ranked_S1_Platinum_S4.SSG", "Exotic.Ranked_S1_Master_S4.SSG", 
    "Exotic.Ranked_S1_Gold_S4.SSG", "Exotic.Ranked_S1_Diamond_S4.SSG", "Exotic.Ranked_S1_Bronze_S4.SSG", "Exotic.Ranked_S5_Bronze.SSG", 
    "Exotic.Ranked_S5_Diamond.SSG", "Exotic.Ranked_S5_Gold.SSG", "Exotic.Ranked_S5_Master.SSG", "Exotic.Ranked_S5_Platinum.SSG", 
    "Exotic.Ranked_S5_Silver.SSG", "Exotic.Strike_Howl.SSG", "Exotic.Strike_FireSerpent.SSG", "Exotic.Strike_HoloTitan.SSG", 
    "Exotic.Flower_Viola.SSG", "Exotic.Base.M82A1", "Exotic.LegacyBase.M82A1", "Exotic.Aluminum_Red.M82A1", "Exotic.BlackLava.M82A1", 
    "Exotic.CarbonFiber.M82A1", "Exotic.ColorBlue.M82A1", "Exotic.ColorGreen.M82A1", "Exotic.Copper_Leaf.M82A1", 
    "Exotic.ForumViolet_CaliforniaGold1.M82A1", "Exotic.Graffiti1.M82A1", "Exotic.Marble_Violet.M82A1", "Exotic.MilkyWay1.M82A1", 
    "Exotic.MilkyWay3.M82A1", "Exotic.Rock_Ice.M82A1", "Exotic.Rock_Opal.M82A1", "Exotic.Sliver_Leaf_Black.M82A1", 
    "Exotic.Strike_Acheron.M82A1", "Exotic.Wood.M82A1", "Exotic.Strike_Asiimov.M82A1", "Exotic.Strike_Atheris.M82A1", 
    "Exotic.Strike_BOOM.M82A1", "Exotic.Strike_BlackNile.M82A1", "Exotic.Strike_ThePrince.M82A1", "Exotic.Strike_Capillary.M82A1", 
    "Exotic.Strike_ChromaticAberration.M82A1", "Exotic.Strike_SuninLeo.M82A1", "Exotic.Strike_ContainmentBreach.M82A1", 
    "Exotic.Strike_Corticera.M82A1", "Exotic.Strike_DesertHydra.M82A1", "Exotic.Strike_Redline.M82A1", "Exotic.Strike_Duality.M82A1", 
    "Exotic.Strike_ElectricHive.M82A1", "Exotic.Strike_EliteBuild.M82A1", "Exotic.Strike_Wildfire.M82A1", "Exotic.Strike_Exoskeleton.M82A1", 
    "Exotic.Strike_FeverDream.M82A1", "Exotic.Strike_Graphite.M82A1", "Exotic.Strike_Gungnir.M82A1", "Exotic.Strike_HyperBeast.M82A1", 
    "Exotic.Zebra1.M82A1", "Exotic.Strike_LightningStrike.M82A1", "Exotic.Strike_SilkTiger.M82A1", "Exotic.Strike_Man_o_war.M82A1", 
    "Exotic.Strike_Medusa.M82A1", "Exotic.Strike_Mortis.M82A1", "Exotic.Strike_NeoNoir.M82A1", "Exotic.Strike_OniTaiji.M82A1", 
    "Exotic.Strike_PAW.M82A1", "Exotic.Strike_POPAWP.M82A1", "Exotic.Strike_Phobos.M82A1", "Exotic.Ranked_S1_Silver.M82A1", 
    "Exotic.Strike_PitViper.M82A1", "Exotic.Strike_WormGod.M82A1", "Exotic.BP_S1_Meander.M82A1", "Exotic.BP_S1_Rose.M82A1", 
    "Exotic.HDBase.M82A1", "Exotic.BP_S2_Shatterline.M82A1", "Exotic.BP_S2_Sigil.M82A1", "Exotic.Ranked_S1_Bronze.M82A1", 
    "Exotic.Ranked_S1_Diamond.M82A1", "Exotic.Ranked_S1_Gold.M82A1", "Exotic.Ranked_S1_Master.M82A1", "Exotic.Ranked_S1_Platinum.M82A1", 
    "Exotic.Strike_PinkDDPAT.M82A1", "Exotic.BP_S3_Bunny.M82A1", "Exotic.BP_S3_Egg.M82A1", "Exotic.Ranked_S2_Bronze.M82A1", 
    "Exotic.Ranked_S2_Diamond.M82A1", "Exotic.Ranked_S2_Gold.M82A1", "Exotic.Ranked_S2_Master.M82A1", "Exotic.Ranked_S2_Platinum.M82A1", 
    "Exotic.Ranked_S2_Silver.M82A1", "Exotic.Ranked_S2_Silver_S4.M82A1", "Exotic.Ranked_S2_Platinum_S4.M82A1", 
    "Exotic.Ranked_S2_Master_S4.M82A1", "Exotic.Ranked_S2_Gold_S4.M82A1", "Exotic.Ranked_S2_Diamond_S4.M82A1", "Exotic.Ranked_S2_Bronze_S4.M82A1", 
    "Exotic.Ranked_S1_Silver_S4.M82A1", "Exotic.Ranked_S1_Platinum_S4.M82A1", "Exotic.Ranked_S1_Master_S4.M82A1", 
    "Exotic.Ranked_S1_Gold_S4.M82A1", "Exotic.Ranked_S1_Diamond_S4.M82A1", "Exotic.Ranked_S1_Bronze_S4.M82A1", "Exotic.Ranked_S5_Bronze.M82A1", 
    "Exotic.Ranked_S5_Diamond.M82A1", "Exotic.Ranked_S5_Gold.M82A1", "Exotic.Ranked_S5_Master.M82A1", "Exotic.Ranked_S5_Platinum.M82A1", 
    "Exotic.Ranked_S5_Silver.M82A1", "Exotic.Strike_Howl.M82A1", "Exotic.Strike_FireSerpent.M82A1", "Exotic.MP_S2_PlainBrocadePrint.M82A1", 
    "Exotic.MP_S2C_BlackZoneAlert.M82A1", "Exotic.MP_S2Base.M82A1", "Exotic.Strike_HoloTitan.M82A1", "Exotic.Flower_Viola.M82A1", 
    "Exotic.M82A1Cyan.Charm", "Exotic.M82A1Orange.Charm", "Exotic.M82A1Red.Charm", "Exotic.AWP.Charm", "Exotic.SSG.Charm", 
    "Exotic.M82A1.Charm", "Exotic.M200.Charm", "Exotic.WA2000.Charm", "Exotic.DSR1.Charm", "Exotic.NTW20.Charm", "Exotic.Specter.Charm", 
    "Exotic.Base.M200", "Exotic.LegacyBase.M200", "Exotic.Aluminum_Red.M200", "Exotic.BlackLava.M200", "Exotic.CarbonFiber.M200", 
    "Exotic.ColorBlue.M200", "Exotic.ColorGreen.M200", "Exotic.Copper_Leaf.M200", "Exotic.ForumViolet_CaliforniaGold1.M200", 
    "Exotic.Graffiti1.M200", "Exotic.Marble_Violet.M200", "Exotic.MilkyWay1.M200", "Exotic.MilkyWay3.M200", "Exotic.Rock_Ice.M200", 
    "Exotic.Rock_Opal.M200", "Exotic.Sliver_Leaf_Black.M200", "Exotic.Strike_Acheron.M200", "Exotic.Wood.M200", "Exotic.Strike_Asiimov.M200", 
    "Exotic.Strike_Atheris.M200", "Exotic.Strike_BOOM.M200", "Exotic.Strike_BlackNile.M200", "Exotic.Strike_ThePrince.M200", 
    "Exotic.Strike_Capillary.M200", "Exotic.Strike_ChromaticAberration.M200", "Exotic.Strike_SuninLeo.M200", "Exotic.Strike_ContainmentBreach.M200", 
    "Exotic.Strike_Corticera.M200", "Exotic.Strike_DesertHydra.M200", "Exotic.Strike_Redline.M200", "Exotic.Strike_Duality.M200", 
    "Exotic.Strike_ElectricHive.M200", "Exotic.Strike_EliteBuild.M200", "Exotic.Strike_Wildfire.M200", "Exotic.Strike_WormGod.M200", 
    "Exotic.Strike_FeverDream.M200", "Exotic.Strike_Graphite.M200", "Exotic.Strike_Gungnir.M200", "Exotic.Strike_HyperBeast.M200", 
    "Exotic.Zebra1.M200", "Exotic.Strike_LightningStrike.M200", "Exotic.Strike_SilkTiger.M200", "Exotic.Strike_Man_o_war.M200", 
    "Exotic.BP_S1_Rose.M200", "Exotic.Strike_Mortis.M200", "Exotic.BP_S1_Meander.M200", "Exotic.HDBase.M200", "Exotic.Strike_PAW.M200", 
    "Exotic.Strike_POPAWP.M200", "Exotic.Strike_Phobos.M200", "Exotic.Strike_PinkDDPAT.M200", "Exotic.Strike_PitViper.M200", 
    "Exotic.BP_S2_Shatterline.M200", "Exotic.BP_S2_Sigil.M200", "Exotic.Ranked_S1_Bronze.M200", "Exotic.Ranked_S1_Diamond.M200", 
    "Exotic.Ranked_S1_Gold.M200", "Exotic.Ranked_S1_Master.M200", "Exotic.Ranked_S1_Platinum.M200", "Exotic.Ranked_S1_Silver.M200", 
    "Exotic.BP_S3_Bunny.M200", "Exotic.BP_S3_Egg.M200", "Exotic.Ranked_S2_Bronze.M200", "Exotic.Ranked_S2_Diamond.M200", 
    "Exotic.Ranked_S2_Gold.M200", "Exotic.Ranked_S2_Master.M200", "Exotic.Ranked_S2_Platinum.M200", "Exotic.Ranked_S2_Silver.M200", 
    "Exotic.Ranked_S2_Silver_S4.M200", "Exotic.Ranked_S2_Platinum_S4.M200", "Exotic.Ranked_S2_Master_S4.M200", "Exotic.Ranked_S2_Gold_S4.M200", 
    "Exotic.Ranked_S2_Diamond_S4.M200", "Exotic.Ranked_S2_Bronze_S4.M200", "Exotic.Ranked_S1_Silver_S4.M200", "Exotic.Ranked_S1_Platinum_S4.M200", 
    "Exotic.Ranked_S1_Master_S4.M200", "Exotic.Ranked_S1_Gold_S4.M200", "Exotic.Ranked_S1_Diamond_S4.M200", "Exotic.Ranked_S1_Bronze_S4.M200", 
    "Exotic.Ranked_S5_Bronze.M200", "Exotic.Ranked_S5_Diamond.M200", "Exotic.Ranked_S5_Gold.M200", "Exotic.Ranked_S5_Master.M200", 
    "Exotic.Ranked_S5_Platinum.M200", "Exotic.Ranked_S5_Silver.M200", "Exotic.Strike_Howl.M200", "Exotic.Strike_FireSerpent.M200", 
    "Exotic.MP_S2_NeonPulse.M200", "Exotic.MP_S2C_NeonPulse_Green.M200", "Exotic.MP_S2Base.M200", "Exotic.Strike_HoloTitan.M200", 
    "Exotic.Flower_Viola.M200", "Exotic.Base.Kar98k", "Exotic.LegacyBase.Kar98k", "Exotic.Aluminum_Red.Kar98k", "Exotic.BlackLava.Kar98k", 
    "Exotic.CarbonFiber.Kar98k", "Exotic.ColorBlue.Kar98k", "Exotic.ColorGreen.Kar98k", "Exotic.Copper_Leaf.Kar98k", 
    "Exotic.ForumViolet_CaliforniaGold1.Kar98k", "Exotic.Graffiti1.Kar98k", "Exotic.Marble_Violet.Kar98k", "Exotic.MilkyWay1.Kar98k", 
    "Exotic.MilkyWay3.Kar98k", "Exotic.Rock_Ice.Kar98k", "Exotic.Rock_Opal.Kar98k", "Exotic.Sliver_Leaf_Black.Kar98k", 
    "Exotic.Strike_Acheron.Kar98k", "Exotic.Wood.Kar98k", "Exotic.Strike_Asiimov.Kar98k", "Exotic.Strike_Atheris.Kar98k", 
    "Exotic.Strike_BOOM.Kar98k", "Exotic.Strike_BlackNile.Kar98k", "Exotic.Strike_ThePrince.Kar98k", "Exotic.Strike_Capillary.Kar98k", 
    "Exotic.Strike_ChromaticAberration.Kar98k", "Exotic.Strike_SuninLeo.Kar98k", "Exotic.Strike_ContainmentBreach.Kar98k", 
    "Exotic.Strike_Corticera.Kar98k", "Exotic.Strike_DesertHydra.Kar98k", "Exotic.Strike_Redline.Kar98k", "Exotic.Strike_Duality.Kar98k", 
    "Exotic.Strike_ElectricHive.Kar98k", "Exotic.Strike_EliteBuild.Kar98k", "Exotic.Strike_Wildfire.Kar98k", "Exotic.Strike_WormGod.Kar98k", 
    "Exotic.Strike_FeverDream.Kar98k", "Exotic.Strike_Graphite.Kar98k", "Exotic.Strike_Gungnir.Kar98k", "Exotic.Strike_HyperBeast.Kar98k", 
    "Exotic.Zebra1.Kar98k", "Exotic.Strike_LightningStrike.Kar98k", "Exotic.Strike_SilkTiger.Kar98k", "Exotic.Strike_Man_o_war.Kar98k", 
    "Exotic.BP_S2_Sigil.Kar98k", "Exotic.Strike_Mortis.Kar98k", "Exotic.BP_S2_Shatterline.Kar98k", "Exotic.HDBase.Kar98k", 
    "Exotic.Strike_PAW.Kar98k", "Exotic.Strike_POPAWP.Kar98k", "Exotic.Strike_Phobos.Kar98k", "Exotic.Strike_PinkDDPAT.Kar98k", 
    "Exotic.Strike_PitViper.Kar98k", "Exotic.Ranked_S1_Bronze.Kar98k", "Exotic.Ranked_S1_Diamond.Kar98k", "Exotic.Ranked_S1_Gold.Kar98k", 
    "Exotic.Ranked_S1_Master.Kar98k", "Exotic.Ranked_S1_Platinum.Kar98k", "Exotic.Ranked_S1_Silver.Kar98k", "Exotic.BP_S3_Bunny.Kar98k", 
    "Exotic.BP_S3_Egg.Kar98k", "Exotic.Ranked_S2_Bronze.Kar98k", "Exotic.Ranked_S2_Diamond.Kar98k", "Exotic.Ranked_S2_Gold.Kar98k", 
    "Exotic.Ranked_S2_Master.Kar98k", "Exotic.Ranked_S2_Platinum.Kar98k", "Exotic.Ranked_S2_Silver.Kar98k", "Exotic.Ranked_S2_Silver_S4.Kar98k", 
    "Exotic.Ranked_S2_Platinum_S4.Kar98k", "Exotic.Ranked_S2_Master_S4.Kar98k", "Exotic.Ranked_S2_Gold_S4.Kar98k", "Exotic.Ranked_S2_Diamond_S4.Kar98k", 
    "Exotic.Ranked_S2_Bronze_S4.Kar98k", "Exotic.Ranked_S1_Silver_S4.Kar98k", "Exotic.Ranked_S1_Platinum_S4.Kar98k", "Exotic.Ranked_S1_Master_S4.Kar98k", 
    "Exotic.Ranked_S1_Gold_S4.Kar98k", "Exotic.Ranked_S1_Diamond_S4.Kar98k", "Exotic.Ranked_S1_Bronze_S4.Kar98k", "Exotic.Ranked_S5_Bronze.Kar98k", 
    "Exotic.Ranked_S5_Diamond.Kar98k", "Exotic.Ranked_S5_Gold.Kar98k", "Exotic.Ranked_S5_Master.Kar98k", "Exotic.Ranked_S5_Platinum.Kar98k", 
    "Exotic.Ranked_S5_Silver.Kar98k", "Exotic.Strike_Howl.Kar98k", "Exotic.MP_S1_StarLane.Kar98k", "Exotic.Strike_FireSerpent.Kar98k", 
    "Exotic.MP_S1C_RedShift.Kar98k", "Exotic.MP_S2_BlackGoldFlow.Kar98k", "Exotic.MP_S1Base.Kar98k", "Exotic.MP_S2C_CrimsonWhiteBloom.Kar98k", 
    "Exotic.Strike_HoloTitan.Kar98k", "Exotic.Flower_Viola.Kar98k", "Exotic.Flower_Rose.Kar98k", "Exotic.Base.WA2000", 
    "Exotic.Strike_Wings.WA2000", "Exotic.Strike_Triqua.WA2000", "Exotic.MilkyWay3.WA2000", "Exotic.Rock_Ice.WA2000", "Exotic.Rock_Opal.WA2000", 
    "Exotic.Zebra1.WA2000", "Exotic.Strike_SnakePit.WA2000", "Exotic.BP_S3_Egg.WA2000", "Exotic.Strike_TomCat.WA2000", 
    "Exotic.Strike_Stymphalian.WA2000", "Exotic.Strike_SpaltedWood.WA2000", "Exotic.Sliver_Leaf_Black.WA2000", "Exotic.Copper_Leaf.WA2000", 
    "Exotic.Strike_Torque.WA2000", "Exotic.Wood.WA2000", "Exotic.ForumViolet_CaliforniaGold1.WA2000", "Exotic.BP_S3_Bunny.WA2000", 
    "Exotic.Strike_Surveillance.WA2000", "Exotic.CarbonFiber.WA2000", "Exotic.Aluminum_Red.WA2000", "Exotic.BlackLava.WA2000", 
    "Exotic.ColorBlue.WA2000", "Exotic.ColorGreen.WA2000", "Exotic.Graffiti1.WA2000", "Exotic.Marble_Violet.WA2000", "Exotic.MilkyWay1.WA2000", 
    "Exotic.Strike_AkihabaraAccept.WA2000", "Exotic.Strike_AmberSlipstream.WA2000", "Exotic.Strike_ArcticWolf.WA2000", 
    "Exotic.Strike_Aristocrat.WA2000", "Exotic.Strike_BengalTiger.WA2000", "Exotic.Strike_Copperhead.WA2000", "Exotic.Strike_DeathbyPuppy.WA2000", 
    "Exotic.Strike_FlameJormungandr.WA2000", "Exotic.Strike_FleetFlock.WA2000", "Exotic.Strike_GreenApple.WA2000", 
    "Exotic.Strike_MidnightLily.WA2000", "Exotic.Strike_NavyMurano.WA2000", "Exotic.Strike_Plague.WA2000", "Exotic.Strike_RandomAccess.WA2000", 
    "Exotic.Strike_Ricochet.WA2000", "Exotic.Strike_SandStorm.WA2000", "Exotic.Strike_ScarletMachinery.WA2000", "Exotic.Ranked_S2_Bronze.WA2000", 
    "Exotic.Ranked_S2_Diamond.WA2000", "Exotic.Ranked_S2_Gold.WA2000", "Exotic.Ranked_S2_Master.WA2000", "Exotic.Ranked_S2_Platinum.WA2000", 
    "Exotic.Ranked_S2_Silver.WA2000", "Exotic.Ranked_S2_Silver_S4.WA2000", "Exotic.Ranked_S2_Platinum_S4.WA2000", 
    "Exotic.Ranked_S2_Master_S4.WA2000", "Exotic.Ranked_S2_Gold_S4.WA2000", "Exotic.Ranked_S2_Diamond_S4.WA2000", "Exotic.Ranked_S2_Bronze_S4.WA2000", 
    "Exotic.Ranked_S1_Silver_S4.WA2000", "Exotic.Ranked_S1_Platinum_S4.WA2000", "Exotic.Ranked_S1_Master_S4.WA2000", 
    "Exotic.Ranked_S1_Gold_S4.WA2000", "Exotic.Ranked_S1_Diamond_S4.WA2000", "Exotic.Ranked_S1_Bronze_S4.WA2000", "Exotic.Ranked_S5_Bronze.WA2000", 
    "Exotic.Ranked_S5_Diamond.WA2000", "Exotic.Ranked_S5_Gold.WA2000", "Exotic.Ranked_S5_Master.WA2000", "Exotic.Ranked_S5_Platinum.WA2000", 
    "Exotic.Ranked_S5_Silver.WA2000", "Exotic.Strike_Howl.WA2000", "Exotic.Strike_FireSerpent.WA2000", "Exotic.Strike_HoloTitan.WA2000", 
    "Exotic.Flower_Viola.WA2000", "Exotic.Flower_Rose.WA2000", "Exotic.Base.NTW20", "Exotic.Strike_Bulkhead.NTW20", "Exotic.Strike_Bratatat.NTW20", 
    "Exotic.Strike_CaliCamo.NTW20", "Exotic.Strike_Mjölnir.NTW20", "Exotic.Strike_Dazzle.NTW20", "Exotic.Strike_Desert_Strike.NTW20", 
    "Exotic.LegacyBase.NTW20", "Exotic.Strike_Infrastructure.NTW20", "Exotic.Strike_Man-o'-war.NTW20", "Exotic.Strike_PhoenixStencil.NTW20", 
    "Exotic.Strike_Ultralight.NTW20", "Exotic.Strike_Texture.NTW20", "Exotic.Strike_Prototype.NTW20", "Exotic.Strike_PowerLoader.NTW20", 
    "Exotic.Strike_ArmySheen.NTW20", "Exotic.Strike_BoroqueSand.NTW20", "Exotic.Aluminum_Red.NTW20", "Exotic.BlackLava.NTW20", 
    "Exotic.CarbonFiber.NTW20", "Exotic.ColorBlue.NTW20", "Exotic.ColorGreen.NTW20", "Exotic.Copper_Leaf.NTW20", 
    "Exotic.ForumViolet_CaliforniaGold1.NTW20", "Exotic.Graffiti1.NTW20", "Exotic.Marble_Violet.NTW20", "Exotic.MilkyWay1.NTW20", 
    "Exotic.MilkyWay3.NTW20", "Exotic.Rock_Ice.NTW20", "Exotic.Rock_Opal.NTW20", "Exotic.Sliver_Leaf_Black.NTW20", "Exotic.Wood.NTW20", 
    "Exotic.Zebra1.NTW20", "Exotic.Ranked_S5_Bronze.NTW20", "Exotic.Ranked_S5_Diamond.NTW20", "Exotic.Ranked_S5_Gold.NTW20", 
    "Exotic.Ranked_S5_Master.NTW20", "Exotic.Ranked_S5_Platinum.NTW20", "Exotic.Ranked_S5_Silver.NTW20", "Exotic.Strike_Howl.NTW20", 
    "Exotic.Strike_FireSerpent.NTW20", "Exotic.Strike_HoloTitan.NTW20", "Exotic.Flower_Viola.NTW20", "Exotic.Flower_Rose.NTW20", 
    "Exotic.Strike_ArmyShine.Crossbow", "Exotic.LegacyBase.Crossbow", "Exotic.HDBase.Crossbow", "Exotic.ColorGreen.Crossbow", 
    "Exotic.MilkyWay1.Crossbow", "Exotic.ForumViolet_CaliforniaGold1.Crossbow", "Exotic.BlackLava.Crossbow", "Exotic.ColorBlue.Crossbow", 
    "Exotic.Copper_Leaf.Crossbow", "Exotic.Graffiti1.Crossbow", "Exotic.Marble_Violet.Crossbow", "Exotic.MilkyWay3.Crossbow", 
    "Exotic.Rock_Ice.Crossbow", "Exotic.Sliver_Leaf_Black.Crossbow", "Exotic.Wood.Crossbow", "Exotic.Zebra1.Crossbow", 
    "Exotic.CarbonFiber.Crossbow", "Exotic.Aluminum_Red.Crossbow", "Exotic.Rock_Opal.Crossbow", "Exotic.Strike_Stonework.Crossbow", 
    "Exotic.Strike_SplatterJam.Crossbow", "Exotic.Strike_NextGen.Crossbow", "Exotic.Strike_MagnaCarta.Crossbow", 
    "Exotic.Strike_JungleSlipstream.Crossbow", "Exotic.Strike_JungleExplosion.Crossbow", "Exotic.Strike_HeartofPower.Crossbow", 
    "Exotic.Strike_HeartStrike.Crossbow", "Exotic.Strike_GreenMarines.Crossbow", "Exotic.Strike_Fragment.Crossbow", 
    "Exotic.Strike_Enforcer.Crossbow", "Exotic.Strike_CrimsonWeb.Crossbow", "Exotic.Strike_CarbonFiber.Crossbow", 
    "Exotic.Strike_Brass.Crossbow", "Exotic.Strike_BlueHole.Crossbow", "Exotic.Strike_Bloodsport.Crossbow", "Exotic.Strike_Assault.Crossbow", 
    "Exotic.Base.Crossbow", "Exotic.Strike_FireSerpent.Crossbow", "Exotic.Strike_Howl.Crossbow", "Exotic.Strike_HoloTitan.Crossbow", 
    "Exotic.Flower_Viola.Crossbow", "Exotic.Flower_Rose.Crossbow", "Exotic.LegacyBase.DSR1", "Exotic.Marble_Violet.DSR1", 
    "Exotic.Aluminum_Red.DSR1", "Exotic.Copper_Leaf.DSR1", "Exotic.CarbonFiber.DSR1", "Exotic.Strike_ArsenicSpill.DSR1", 
    "Exotic.BlackLava.DSR1", "Exotic.ColorBlue.DSR1", "Exotic.ColorGreen.DSR1", "Exotic.ForumViolet_CaliforniaGold1.DSR1", 
    "Exotic.Graffiti1.DSR1", "Exotic.MilkyWay1.DSR1", "Exotic.MilkyWay3.DSR1", "Exotic.Rock_Opal.DSR1", "Exotic.Sliver_Leaf_Black.DSR1", 
    "Exotic.Wood.DSR1", "Exotic.Zebra1.DSR1", "Exotic.Rock_Ice.DSR1", "Exotic.Strike_CMYK.DSR1", "Exotic.Strike_Fade.DSR1", 
    "Exotic.Strike_ChromeCannon.DSR1", "Exotic.Strike_Printstream.DSR1", "Exotic.Strike_Gambit.DSR1", "Exotic.Strike_IceCoaled.DSR1", 
    "Exotic.Strike_Crakow.DSR1", "Exotic.Strike_GreenEnergy.DSR1", "Exotic.Strike_LongDog.DSR1", "Exotic.Strike_TheEnd.DSR1", 
    "Exotic.Strike_Exothermic.DSR1", "Exotic.Strike_SnakeCamo.DSR1", "Exotic.Strike_SafariMesh.DSR1", "Exotic.HDBase.DSR1", 
    "Exotic.Base.DSR1", "Exotic.Strike_Howl.DSR1", "Exotic.Strike_FireSerpent.DSR1", "Exotic.Strike_HoloTitan.DSR1", 
    "Exotic.Flower_Viola.DSR1", "Exotic.Flower_Rose.DSR1", "Exotic.AWP.Skywyrm.Exotic", "Exotic.Umbra.M82A1.Exotic", 
    "Exotic.M82A1.Lumen.Exotic", "Exotic.Steam.M200.Exotic", "Exotic.Flarion.M200.Exotic", "Exotic.SSG.Eternium.Exotic", 
    "Exotic.Starfade.WA2000.Exotic", "Exotic.Easter2026.AWP.Exotic", "Exotic.ObsidianGild.Kar98k.Exotic", "Exotic.Easter2026.WA2000.Exotic", 
    "Exotic.Starfade.NTW20.Exotic", "Exotic.RGB.Starry.NTW20.Exotic", "Exotic.RGB.Starry.WA2000.Exotic", "Exotic.M200.Eternium.Exotic", 
    "Exotic.Flarion.SSG.Exotic", "Exotic.Watcher.M82A1.Exotic", "Exotic.Bloodmoon.M82A1.Exotic", "Exotic.Starveil.Kar98k.Exotic", 
    "Exotic.RGB.Lumen.M82A1.Exotic", "Exotic.Starfade.Kar98k.Exotic", "Exotic.Starlight.DSR1.Exotic", "Exotic.Watcher_Sky.M82A1.Exotic", 
    "Exotic.RGB.Eternium.M200.Exotic", "Exotic.Starfade.DSR1.Exotic", "Exotic.Starlight.WA2000.Exotic", "Exotic.RGB.Steam.M200.Exotic", 
    "Exotic.Starember.Kar98k.Exotic", "Exotic.RGB.SSG.Exotic", "Exotic.Starlight.Kar98k.Exotic", "Exotic.Starlight.NTW20.Exotic", 
    "Exotic.RGB.Eternium.SSG.Exotic", "Exotic.SteamRedvalve.M200.Exotic", "Exotic.RGB.S4.VioletFiend.NTW20.Exotic", 
    "Exotic.S4.RedSeraph.NTW20.Exotic", "Exotic.S4.VioletFiend.NTW20.Exotic", "Exotic.S4.WildFiend.NTW20.Exotic", "Exotic.Starry.DSR1.Exotic", 
    "Exotic.Nya.AWP.Exotic", "Exotic.RGB.Nya.Kar98k.Exotic", "Exotic.Starlight.AWP.Exotic", "Exotic.Nya_Black.Kar98k.Exotic", 
    "Exotic.RGB.Nya.AWP.Exotic", "Exotic.Starry.NTW20.Exotic", "Exotic.RGB.Starry.Specter.Exotic", "Exotic.Starry.WA2000.Exotic", 
    "Exotic.RGB.NeonCore.Kar98k.Exotic", "Exotic.AbyssPrism.Kar98k.Exotic", "Exotic.Nya.Kar98k.Exotic", "Exotic.Watcher_Sky.AWP.Exotic", 
    "Exotic.Watcher.AWP.Exotic", "Exotic.Kar98k.NeonCore.Exotic", "Exotic.SteamRedvalve.M82A1.Exotic", "Exotic.Steam.M82A1.Exotic", 
    "Exotic.RGB.Watcher.M82A1.Exotic", "Exotic.RGB.Steam.M82A1.Exotic", "Exotic.Starlight.M82A1.Exotic", "Exotic.Starfade.M82A1.Exotic", 
    "Exotic.RGB.Starry.M82A1.Exotic", "Exotic.Starveil.M82A1.Exotic", "Exotic.M82A1.Starry.Exotic", "Exotic.AbyssPrism.M82A1.Exotic", 
    "Exotic.M82A1.NeonCore.Exotic", "Exotic.ObsidianGild.M82A1.Exotic", "Exotic.RGB.NeonCore.M82A1.Exotic", "Exotic.RGB.Starry.DSR1.Exotic", 
    "Exotic.RGB.Watcher.AWP.Exotic", "Exotic.RGB.NightHunt.Crossbow.Exotic", "Exotic.NightHunt.Crossbow.Exotic", 
    "Exotic.NightHunt_Color2.Crossbow.Exotic", "Exotic.RGB.Starry.M200.Exotic", "Exotic.Starfade.M200.Exotic", "Exotic.Starlight.M200.Exotic", 
    "Exotic.Starveil.DSR1.Exotic", "Exotic.RGB.Starry.Kar98k.Exotic", "Exotic.Starveil.M200.Exotic", "Exotic.Starveil.NTW20.Exotic", 
    "Exotic.Starveil.WA2000.Exotic", "Exotic.Starry.M200.Exotic", "Exotic.Starry.Kar98k.Exotic", "Exotic.Nya_Black.M82A1.Exotic", 
    "Exotic.Starlight.Specter.Exotic", "Exotic.RGB.Apocalypse.Specter.Exotic", "Exotic.RGB.AWP.Exotic", "Exotic.Starfade.Specter.Exotic", 
    "Exotic.Nya_Black.AWP.Exotic", "Exotic.Starry.Specter.Exotic", "Exotic.Starveil.Specter.Exotic", "Exotic.Nya_Black.Specter.Exotic", 
    "Exotic.RGB.Starry.AWP.Exotic", "Exotic.Starember.AWP.Exotic", "Exotic.Starfade.AWP.Exotic", "Exotic.Starry.AWP.Exotic", 
    "Exotic.Starveil.AWP.Exotic", "Exotic.RGB.Starry.SSG.Exotic", "Exotic.Starry.SSG.Exotic", "Exotic.Starfade.SSG.Exotic", 
    "Exotic.Starlight.SSG.Exotic", "Exotic.Starveil.SSG.Exotic", "Exotic.Starember.M82A1.Exotic", "Exotic.Starry.Crossbow.Exotic", 
    "Exotic.Nya.M82A1.Exotic", "Exotic.Starember.SSG.Exotic", "Exotic.Starveil.Crossbow.Exotic", "Exotic.Starlight.Crossbow.Exotic", 
    "Exotic.Starfade.Crossbow.Exotic", "Exotic.Starember.Crossbow.Exotic", "Exotic.RGB.Starry.Crossbow.Exotic", 
    "Exotic.NeonCore_Purple.AWP.Exotic", "Exotic.NeonCore_Purple.SSG.Exotic", "Exotic.NeonCore_Cyan.SSG.Exotic", 
    "Exotic.NeonCore_Holo.SSG.Exotic", "Exotic.RGB.NeonCore.SSG.Exotic", "Exotic.NeonCore_Holo.AWP.Exotic", "Exotic.NeonCore_Cyan.AWP.Exotic", 
    "Exotic.RGB.Nya.M82A1.Exotic", "Exotic.RGB.NeonCore.AWP.Exotic", "Exotic.Apocalypse.Specter.Exotic", "Exotic.Apocalypse_Cyan.Specter.Exotic", 
    "Exotic.Nya.Specter.Exotic", "Exotic.Apocalypse_Cyan.AWP.Exotic", "Exotic.Apocalypse.AWP.Exotic", "Exotic.RGB.Apocalypse.AWP.Exotic", 
    "Exotic.Starember.Specter.Exotic", "Exotic.RGB.Nya.Specter.Exotic", "Exotic.StarLordRed.Kar98k.Exotic", "Exotic.StarLordRed.DSR1.Exotic", 
    "Exotic.StarLordGray.Kar98k.Exotic", "Exotic.StarLordGray.DSR1.Exotic", "Exotic.StarLordBule.DSR1.Exotic", 
    "Exotic.StarLordBlue.Kar98k.Exotic", "Exotic.RGB.StarLord.Kar98k.Exotic", "Exotic.RGB.StarLord.DSR1.Exotic", 
    "Exotic.S5.WildFiend.M82A1.Exotic", "Exotic.S5.VioletFiend.M82A1.Exotic", "Exotic.S5.RedSeraph.M82A1.Exotic", 
    "Exotic.RGB.S5.VioletFiend.M82A1.Exotic", "Exotic.S5.WildFiend.AWP.Exotic", "Exotic.S5.RedSeraph.AWP.Exotic", 
    "Exotic.S5.VioletFiend.AWP.Exotic", "Exotic.RGB.S5.VioletFiend.AWP.Exotic", "Exotic.Base.AWP", "Exotic.LegacyBase.AWP", 
    "Exotic.HDBase.AWP", "Exotic.Strike_WormGod.AWP", "Exotic.Strike_Wildfire.AWP", "Exotic.Strike_ThePrince.AWP", "Exotic.Strike_SuninLeo.AWP", 
    "Exotic.Strike_SilkTiger.AWP", "Exotic.Strike_Redline.AWP", "Exotic.Strike_PitViper.AWP", "Exotic.Strike_PinkDDPAT.AWP", 
    "Exotic.Strike_Phobos.AWP", "Exotic.Strike_POPAWP.AWP", "Exotic.Strike_PAW.AWP", "Exotic.Strike_OniTaiji.AWP", "Exotic.Strike_NeoNoir.AWP", 
    "Exotic.Strike_Mortis.AWP", "Exotic.Strike_Medusa.AWP", "Exotic.Strike_Man_o_war.AWP", "Exotic.Strike_LightningStrike.AWP", 
    "Exotic.Strike_HyperBeast.AWP", "Exotic.Strike_Gungnir.AWP", "Exotic.Strike_Graphite.AWP", "Exotic.Strike_FeverDream.AWP", 
    "Exotic.Strike_Exoskeleton.AWP", "Exotic.Strike_EliteBuild.AWP", "Exotic.Strike_ElectricHive.AWP", "Exotic.Strike_Duality.AWP", 
    "Exotic.Strike_DragonLore.AWP", "Exotic.Strike_DesertHydra.AWP", "Exotic.Strike_Corticera.AWP", "Exotic.Strike_ContainmentBreach.AWP", 
    "Exotic.Strike_ChromaticAberration.AWP", "Exotic.Strike_Capillary.AWP", "Exotic.Strike_BlackNile.AWP", "Exotic.Strike_BOOM.AWP", 
    "Exotic.Strike_Atheris.AWP", "Exotic.Strike_Asiimov.AWP", "Exotic.Strike_Acheron.AWP", "Exotic.Strike_CMYK.AWP", 
    "Exotic.Strike_LongDog.AWP", "Exotic.Strike_Fade.AWP", "Exotic.Strike_Printstream.AWP", "Exotic.Strike_ChromeCannon.AWP", 
    "Exotic.Strike_SnakeCamo.AWP", "Exotic.Strike_SafariMesh.AWP", "Exotic.Strike_ArsenicSpill.AWP", "Exotic.Strike_Crakow.AWP", 
    "Exotic.Strike_GreenEnergy.AWP", "Exotic.Strike_IceCoaled.AWP", "Exotic.Aluminum_Red.AWP", "Exotic.BlackLava.AWP", 
    "Exotic.CarbonFiber.AWP", "Exotic.ColorBlue.AWP", "Exotic.ColorGreen.AWP", "Exotic.Copper_Leaf.AWP", 
    "Exotic.ForumViolet_CaliforniaGold1.AWP", "Exotic.Graffiti1.AWP", "Exotic.Marble_Violet.AWP", "Exotic.MilkyWay1.AWP", 
    "Exotic.MilkyWay3.AWP", "Exotic.Rock_Ice.AWP", "Exotic.Rock_Opal.AWP", "Exotic.Sliver_Leaf_Black.AWP", "Exotic.Wood.AWP", 
    "Exotic.Zebra1.AWP", "Exotic.Strike_TheEnd.AWP", "Exotic.Strike_Exothermic.AWP", "Exotic.BP_S1_Meander.AWP", "Exotic.BP_S1_Rose.AWP", 
    "Exotic.BP_S2_Shatterline.AWP", "Exotic.BP_S2_Sigil.AWP", "Exotic.Ranked_S1_Bronze.AWP", "Exotic.Ranked_S1_Diamond.AWP", 
    "Exotic.Ranked_S1_Gold.AWP", "Exotic.Ranked_S1_Master.AWP", "Exotic.Ranked_S1_Platinum.AWP", "Exotic.Ranked_S1_Silver.AWP", 
    "Exotic.BP_S3_Bunny.AWP", "Exotic.BP_S3_Egg.AWP", "Exotic.Ranked_S2_Bronze.AWP", "Exotic.Ranked_S2_Diamond.AWP", 
    "Exotic.Ranked_S2_Gold.AWP", "Exotic.Ranked_S2_Master.AWP", "Exotic.Ranked_S2_Platinum.AWP", "Exotic.Ranked_S2_Silver.AWP", 
    "Exotic.Strike_Gambit.AWP", "Exotic.Ranked_S2_Silver_S4.AWP", "Exotic.Ranked_S2_Platinum_S4.AWP", "Exotic.Ranked_S2_Master_S4.AWP", 
    "Exotic.Ranked_S2_Gold_S4.AWP", "Exotic.Ranked_S2_Diamond_S4.AWP", "Exotic.Ranked_S2_Bronze_S4.AWP", "Exotic.Ranked_S1_Silver_S4.AWP", 
    "Exotic.Ranked_S1_Platinum_S4.AWP", "Exotic.Ranked_S1_Master_S4.AWP", "Exotic.Ranked_S1_Gold_S4.AWP", "Exotic.Ranked_S1_Diamond_S4.AWP", 
    "Exotic.Ranked_S1_Bronze_S4.AWP", "Exotic.MP_S1_BlazingStamen.AWP", "Exotic.MP_S1_CyberPulse.AWP", "Exotic.Strike_Howl.AWP", 
    "Exotic.Strike_FireSerpent.AWP", "Exotic.MP_S1C_BluePorcelain.AWP", "Exotic.MP_S1C_MintyChip.AWP", "Exotic.Strike_HoloTitan.AWP", 
    "Exotic.Strike_DragonLore_Variant.AWP", "Exotic.Flower_Viola.AWP"
}

local meleeSkins = {
    "Exotic.RGB.Starry.Bayonet_M9", "Exotic.RGB.Starry.Axe", "Exotic.RGB.Starry.CordKnife", "Exotic.RGB.Steam.Glove", 
    "Exotic.RGB.Steam.Bayonet_M9", "Exotic.RGB.NeonCore.Glove", "Exotic.RGB.NeonCore.Axe", "Exotic.RGB.Starry.Karambit", 
    "Exotic.RGB.Starry.Glove", "Exotic.RGB.Starry.ButterflyKnife", "Exotic.RGB.Starry.Wakizashi", "Exotic.RGB.Watcher.Glove", 
    "Exotic.RGB.Watcher.Karambit", "Exotic.RGB.Eternium.Glove", "Exotic.RGB.Eternium.FlipKnife", "Exotic.RGB.Luna.Glove", 
    "Exotic.RGB.Luna.ButterflyKnife", "Exotic.RGB.Ashrend.Kukri", "Exotic.RGB.Fools2026.Lollipop", "Exotic.RGB.ScalySawTeeth", 
    "Exotic.RGB.Apocalypse.Chainsaw", "Exotic.Apocalypse.Chainsaw", "Exotic.Apocalypse_Cyan.Chainsaw", "Exotic.RGB.Apocalypse.Glove", 
    "Exotic.Apocalypse.Glove", "Exotic.Apocalypse_Cyan.Glove", "Exotic.NeonCore_Holo.ButterflyKnife", "Exotic.NeonCore_Cyan.ButterflyKnife", 
    "Exotic.NeonCore_Purple.ButterflyKnife", "Exotic.RGB.NeonCore.ButterflyKnife", "Exotic.NeonCore_Holo.Wakizashi", 
    "Exotic.NeonCore_Cyan.Wakizashi", "Exotic.NeonCore_Purple.Wakizashi", "Exotic.RGB.NeonCore.Wakizashi", "Exotic.Starlight.Kukri", 
    "Exotic.Starfade.Kukri", "Exotic.Starry.Kukri", "Exotic.Starveil.Kukri", "Exotic.Starlight.Bayonet_M9", "Exotic.Starfade.Bayonet_M9", 
    "Exotic.Starry.Bayonet_M9", "Exotic.Starveil.Bayonet_M9", "Exotic.Starry.Axe", "Exotic.Starfade.Axe", "Exotic.Starlight.Axe", 
    "Exotic.Starveil.Axe", "Exotic.NightHunt_Color2.CrookSword", "Exotic.NightHunt_Color2.Glove", "Exotic.Starry.CordKnife", 
    "Exotic.Starfade.CordKnife", "Exotic.Starlight.CordKnife", "Exotic.Starveil.CordKnife", "Exotic.Starveil.Karambit", 
    "Exotic.Starveil.ButterflyKnife", "Exotic.Starveil.Wakizashi", "Exotic.Starveil.Glove", "Exotic.Watcher.Glove", "Exotic.Watcher.Karambit", 
    "Exotic.Starry.ButterflyKnife", "Exotic.Starry.Wakizashi", "Exotic.Starlight.ButterflyKnife", "Exotic.Starlight.Wakizashi", 
    "Exotic.Starfade.ButterflyKnife", "Exotic.Starfade.Wakizashi", "Exotic.SteamRedvalve.Glove", "Exotic.SteamRedvalve.Bayonet_M9", 
    "Exotic.AbyssPrism.Glove", "Exotic.AbyssPrism.Axe", "Exotic.Starlight.Glove", "Exotic.Starlight.Karambit", "Exotic.ObsidianGild.Glove", 
    "Exotic.ObsidianGild.Axe", "Exotic.ScalySawTeeth", "Exotic.Fools2026.Lollipop", "Exotic.Kukri.Ashrend", "Exotic.Umbra.Glove", 
    "Exotic.Umbra.ButterflyKnife", "Exotic.Bloodmoon.Glove", "Exotic.Bloodmoon.ButterflyKnife", "Exotic.Starfade.Glove", 
    "Exotic.Starfade.Karambit", "Exotic.Flarion.Glove", "Exotic.Flarion.FlipKnife", "Exotic.Base.TacticalKnife", "Exotic.ColorBlue.TacticalKnife", 
    "Exotic.BlackLava.TacticalKnife", "Exotic.Zebra1.TacticalKnife", "Exotic.Graffiti1.TacticalKnife", "Exotic.Sliver_Leaf_Black.TacticalKnife", 
    "Exotic.ForumViolet_CaliforniaGold1.TacticalKnife", "Exotic.Rock_Opal.TacticalKnife", "Exotic.Rock_Ice.TacticalKnife", 
    "Exotic.MilkyWay3.TacticalKnife", "Exotic.MilkyWay1.TacticalKnife", "Exotic.Marble_Violet.TacticalKnife", "Exotic.Copper_Leaf.TacticalKnife", 
    "Exotic.Aluminum_Red.TacticalKnife", "Exotic.Wood.TacticalKnife", "Exotic.ColorGreen.TacticalKnife", "Exotic.CarbonFiber.TacticalKnife", 
    "Exotic.Strike_UrbanMasked.TacticalKnife", "Exotic.Strike_Fade.TacticalKnife", "Exotic.Strike_CaseHardened.TacticalKnife", 
    "Exotic.Strike_Slaughter.TacticalKnife", "Exotic.Strike_TigerTooth.TacticalKnife", "Exotic.Strike_Autotronic.TacticalKnife", 
    "Exotic.Strike_BlackLaminate.TacticalKnife", "Exotic.Strike_BlueSteel.TacticalKnife", "Exotic.Strike_CrimsomWeb.TacticalKnife", 
    "Exotic.Strike_DamascusSteel.TacticalKnife", "Exotic.Strike_Freehand.TacticalKnife", "Exotic.Strike_BorealForest.TacticalKnife", 
    "Exotic.Strike_BrightWater.TacticalKnife", "Exotic.Strike_RustCoat.TacticalKnife", "Exotic.Strike_Stained.TacticalKnife", 
    "Exotic.Strike_Ultraviolet.TacticalKnife", "Exotic.Strike_ForestDDPAT.TacticalKnife", "Exotic.Strike_NightStripe.TacticalKnife", 
    "Exotic.Strike_Doppler_Red.TacticalKnife", "Exotic.Strike_Doppler_Blue.TacticalKnife", "Exotic.Strike_GammaDoppler_Cyan.TacticalKnife", 
    "Exotic.Strike_GammaDoppler_Green.TacticalKnife", "Exotic.Strike_Lore.TacticalKnife", "Exotic.Strike_MarbleFade.TacticalKnife", 
    "Exotic.Strike_SafariMesh.TacticalKnife", "Exotic.Strike_Scorched.TacticalKnife", "Exotic.BP_S1_Rose.TacticalKnife", 
    "Exotic.BP_S2_Sigil.TacticalKnife", "Exotic.K_S1_White.TacticalKnife", "Exotic.K_S1_Brown.TacticalKnife", "Exotic.K_S1_Blue.TacticalKnife", 
    "Exotic.K_S1_Gold.TacticalKnife", "Exotic.K_S1_Red.TacticalKnife", "Exotic.K_S1_Cyan.TacticalKnife", "Exotic.Strike_GoldenTemper.TacticalKnife", 
    "Exotic.Strike_GammaDoppler_Pink.TacticalKnife", "Exotic.Flower_Viola.TacticalKnife", "Exotic.Base.Stiletto", "Exotic.ColorBlue.Stiletto", 
    "Exotic.BlackLava.Stiletto", "Exotic.Zebra1.Stiletto", "Exotic.Graffiti1.Stiletto", "Exotic.Sliver_Leaf_Black.Stiletto", 
    "Exotic.ForumViolet_CaliforniaGold1.Stiletto", "Exotic.Rock_Opal.Stiletto", "Exotic.Rock_Ice.Stiletto", "Exotic.MilkyWay3.Stiletto", 
    "Exotic.MilkyWay1.Stiletto", "Exotic.Marble_Violet.Stiletto", "Exotic.Copper_Leaf.Stiletto", "Exotic.Aluminum_Red.Stiletto", 
    "Exotic.Wood.Stiletto", "Exotic.ColorGreen.Stiletto", "Exotic.CarbonFiber.Stiletto", "Exotic.Strike_UrbanMasked.Stiletto", 
    "Exotic.Strike_Slaughter.Stiletto", "Exotic.Strike_Ultraviolet.Stiletto", "Exotic.Strike_Stained.Stiletto", "Exotic.Strike_TigerTooth.Stiletto", 
    "Exotic.Strike_SafariMesh.Stiletto", "Exotic.Strike_Scorched.Stiletto", "Exotic.Strike_BlueSteel.Stiletto", "Exotic.Strike_BorealForest.Stiletto", 
    "Exotic.Strike_BrightWater.Stiletto", "Exotic.Strike_CrimsomWeb.Stiletto", "Exotic.Strike_DamascusSteel.Stiletto", 
    "Exotic.Strike_Doppler_Red.Stiletto", "Exotic.Strike_Doppler_Blue.Stiletto", "Exotic.Strike_Fade.Stiletto", "Exotic.Strike_ForestDDPAT.Stiletto", 
    "Exotic.Strike_Freehand.Stiletto", "Exotic.Strike_GammaDoppler_Cyan.Stiletto", "Exotic.Strike_GammaDoppler_Green.Stiletto", 
    "Exotic.Strike_CaseHardened.Stiletto", "Exotic.Strike_MarbleFade.Stiletto", "Exotic.Strike_NightStripe.Stiletto", 
    "Exotic.Strike_RustCoat.Stiletto", "Exotic.BP_S1_Rose.Stiletto", "Exotic.BP_S2_Sigil.Stiletto", "Exotic.K_S5_White.Stiletto", 
    "Exotic.K_S1_White.Stiletto", "Exotic.K_S5_Brown.Stiletto", "Exotic.K_S5_Blue.Stiletto", "Exotic.K_S5_Gold.Stiletto", 
    "Exotic.K_S5_Red.Stiletto", "Exotic.K_S5_Cyan.Stiletto", "Exotic.K_S1_Brown.Stiletto", "Exotic.K_S1_Blue.Stiletto", 
    "Exotic.K_S1_Gold.Stiletto", "Exotic.K_S1_Red.Stiletto", "Exotic.K_S1_Cyan.Stiletto", "Exotic.Strike_GoldenTemper.Stiletto", 
    "Exotic.Strike_GammaDoppler_Pink.Stiletto", "Exotic.Flower_Viola.Stiletto", "Exotic.Base.Bayonet", "Exotic.Aluminum_Red.Bayonet", 
    "Exotic.ColorBlue.Bayonet", "Exotic.Zebra1.Bayonet", "Exotic.BlackLava.Bayonet", "Exotic.Graffiti1.Bayonet", "Exotic.Rock_Opal.Bayonet", 
    "Exotic.Rock_Ice.Bayonet", "Exotic.MilkyWay3.Bayonet", "Exotic.MilkyWay1.Bayonet", "Exotic.Marble_Violet.Bayonet", 
    "Exotic.ForumViolet_CaliforniaGold1.Bayonet", "Exotic.Copper_Leaf.Bayonet", "Exotic.Wood.Bayonet", "Exotic.ColorGreen.Bayonet", 
    "Exotic.CarbonFiber.Bayonet", "Exotic.Sliver_Leaf_Black.Bayonet", "Exotic.StrikeBase.Bayonet", "Exotic.Strike_Autotronic.Bayonet", 
    "Exotic.Strike_BlackLaminate.Bayonet", "Exotic.Strike_BlueSteel.Bayonet", "Exotic.Strike_BorealForest.Bayonet", 
    "Exotic.Strike_BrightWater.Bayonet", "Exotic.Strike_CaseHardened.Bayonet", "Exotic.Strike_CrimsomWeb.Bayonet", 
    "Exotic.Strike_DamascusSteel.Bayonet", "Exotic.Strike_Doppler_Blue.Bayonet", "Exotic.Strike_Doppler_Red.Bayonet", 
    "Exotic.Strike_Fade.Bayonet", "Exotic.Strike_ForestDDPAT.Bayonet", "Exotic.Strike_Freehand.Bayonet", "Exotic.Strike_GammaDoppler_Cyan.Bayonet", 
    "Exotic.Strike_GammaDoppler_Green.Bayonet", "Exotic.Strike_Lore.Bayonet", "Exotic.Strike_MarbleFade.Bayonet", "Exotic.Strike_NightStripe.Bayonet", 
    "Exotic.Strike_RustCoat.Bayonet", "Exotic.Strike_SafariMesh.Bayonet", "Exotic.Strike_Scorched.Bayonet", "Exotic.Strike_Slaughter.Bayonet", 
    "Exotic.Strike_Stained.Bayonet", "Exotic.Strike_TigerTooth.Bayonet", "Exotic.Strike_Ultraviolet.Bayonet", "Exotic.Strike_UrbanMasked.Bayonet", 
    "Exotic.BP_S1_Rose.Bayonet", "Exotic.BP_S2_Sigil.Bayonet", "Exotic.K_S1_White.Bayonet", "Exotic.K_S1_Brown.Bayonet", 
    "Exotic.K_S1_Blue.Bayonet", "Exotic.K_S1_Gold.Bayonet", "Exotic.K_S1_Red.Bayonet", "Exotic.K_S1_Cyan.Bayonet", 
    "Exotic.Strike_GoldenTemper.Bayonet", "Exotic.Strike_GammaDoppler_Pink.Bayonet", "Exotic.Flower_Viola.Bayonet", "Exotic.Base.Bayonet_M9", 
    "Exotic.Aluminum_Red.Bayonet_M9", "Exotic.ColorBlue.Bayonet_M9", "Exotic.Zebra1.Bayonet_M9", "Exotic.BlackLava.Bayonet_M9", 
    "Exotic.Sliver_Leaf_Black.Bayonet_M9", "Exotic.Graffiti1.Bayonet_M9", "Exotic.Rock_Opal.Bayonet_M9", "Exotic.Rock_Ice.Bayonet_M9", 
    "Exotic.MilkyWay3.Bayonet_M9", "Exotic.MilkyWay1.Bayonet_M9", "Exotic.Marble_Violet.Bayonet_M9", "Exotic.ForumViolet_CaliforniaGold1.Bayonet_M9", 
    "Exotic.Copper_Leaf.Bayonet_M9", "Exotic.Wood.Bayonet_M9", "Exotic.ColorGreen.Bayonet_M9", "Exotic.CarbonFiber.Bayonet_M9", 
    "Exotic.Strike_Autotronic.Bayonet_M9", "Exotic.Strike_UrbanMasked.Bayonet_M9", "Exotic.Strike_BlackLaminate.Bayonet_M9", 
    "Exotic.Strike_BlueSteel.Bayonet_M9", "Exotic.Strike_BorealForest.Bayonet_M9", "Exotic.Strike_BrightWater.Bayonet_M9", 
    "Exotic.Strike_CaseHardened.Bayonet_M9", "Exotic.Strike_CrimsomWeb.Bayonet_M9", "Exotic.Strike_DamascusSteel.Bayonet_M9", 
    "Exotic.Strike_Doppler_Blue.Bayonet_M9", "Exotic.Strike_Doppler_Red.Bayonet_M9", "Exotic.Strike_Fade.Bayonet_M9", 
    "Exotic.Strike_ForestDDPAT.Bayonet_M9", "Exotic.Strike_Freehand.Bayonet_M9", "Exotic.Strike_GammaDoppler_Cyan.Bayonet_M9", 
    "Exotic.Strike_GammaDoppler_Green.Bayonet_M9", "Exotic.Strike_Lore.Bayonet_M9", "Exotic.Strike_MarbleFade.Bayonet_M9", 
    "Exotic.Strike_NightStripe.Bayonet_M9", "Exotic.Strike_RustCoat.Bayonet_M9", "Exotic.Strike_SafariMesh.Bayonet_M9", 
    "Exotic.Strike_Scorched.Bayonet_M9", "Exotic.Strike_Slaughter.Bayonet_M9", "Exotic.Strike_Stained.Bayonet_M9", 
    "Exotic.Strike_TigerTooth.Bayonet_M9", "Exotic.Strike_Ultraviolet.Bayonet_M9", "Exotic.BP_S1_Rose.Bayonet_M9", "Exotic.BP_S3_Bunny.Bayonet_M9", 
    "Exotic.BP_S2_Sigil.Bayonet_M9", "Exotic.K_S5_White.Bayonet_M9", "Exotic.K_S1_Brown.Bayonet_M9", "Exotic.K_S1_Blue.Bayonet_M9", 
    "Exotic.K_S1_Gold.Bayonet_M9", "Exotic.K_S1_Red.Bayonet_M9", "Exotic.K_S1_Cyan.Bayonet_M9", "Exotic.K_S1_White.Bayonet_M9", 
    "Exotic.K_S5_Brown.Bayonet_M9", "Exotic.K_S5_Blue.Bayonet_M9", "Exotic.K_S5_Gold.Bayonet_M9", "Exotic.K_S5_Red.Bayonet_M9", 
    "Exotic.K_S5_Cyan.Bayonet_M9", "Exotic.Strike_GoldenTemper.Bayonet_M9", "Exotic.Strike_GammaDoppler_Pink.Bayonet_M9", 
    "Exotic.Flower_Viola.Bayonet_M9", "Exotic.Base.ButterflyKnife", "Exotic.Aluminum_Red.ButterflyKnife", "Exotic.ColorBlue.ButterflyKnife", 
    "Exotic.Zebra1.ButterflyKnife", "Exotic.BlackLava.ButterflyKnife", "Exotic.Sliver_Leaf_Black.ButterflyKnife", "Exotic.Graffiti1.ButterflyKnife", 
    "Exotic.Rock_Opal.ButterflyKnife", "Exotic.Rock_Ice.ButterflyKnife", "Exotic.MilkyWay3.ButterflyKnife", "Exotic.MilkyWay1.ButterflyKnife", 
    "Exotic.Marble_Violet.ButterflyKnife", "Exotic.ForumViolet_CaliforniaGold1.ButterflyKnife", "Exotic.Copper_Leaf.ButterflyKnife", 
    "Exotic.Wood.ButterflyKnife", "Exotic.ColorGreen.ButterflyKnife", "Exotic.CarbonFiber.ButterflyKnife", "Exotic.Strike_Autotronic.ButterflyKnife", 
    "Exotic.Strike_UrbanMasked.ButterflyKnife", "Exotic.Strike_BlackLaminate.ButterflyKnife", "Exotic.Strike_BlueSteel.ButterflyKnife", 
    "Exotic.Strike_BorealForest.ButterflyKnife", "Exotic.Strike_BrightWater.ButterflyKnife", "Exotic.Strike_CaseHardened.ButterflyKnife", 
    "Exotic.Strike_CrimsomWeb.ButterflyKnife", "Exotic.Strike_DamascusSteel.ButterflyKnife", "Exotic.Strike_Doppler_Blue.ButterflyKnife", 
    "Exotic.Strike_Doppler_Red.ButterflyKnife", "Exotic.Strike_Fade.ButterflyKnife", "Exotic.Strike_ForestDDPAT.ButterflyKnife", 
    "Exotic.Strike_Freehand.ButterflyKnife", "Exotic.Strike_GammaDoppler_Cyan.ButterflyKnife", "Exotic.Strike_GammaDoppler_Green.ButterflyKnife", 
    "Exotic.Strike_Lore.ButterflyKnife", "Exotic.Strike_MarbleFade.ButterflyKnife", "Exotic.Strike_NightStripe.ButterflyKnife", 
    "Exotic.Strike_RustCoat.ButterflyKnife", "Exotic.Strike_SafariMesh.ButterflyKnife", "Exotic.Strike_Scorched.ButterflyKnife", 
    "Exotic.Strike_Slaughter.ButterflyKnife", "Exotic.Strike_Stained.ButterflyKnife", "Exotic.Strike_TigerTooth.ButterflyKnife", 
    "Exotic.Strike_Ultraviolet.ButterflyKnife", "Exotic.BP_S1_Rose.ButterflyKnife", "Exotic.BP_S2_Sigil.ButterflyKnife", 
    "Exotic.K_S1_White.ButterflyKnife", "Exotic.K_S1_Brown.ButterflyKnife", "Exotic.K_S1_Blue.ButterflyKnife", "Exotic.K_S1_Gold.ButterflyKnife", 
    "Exotic.K_S1_Red.ButterflyKnife", "Exotic.K_S1_Cyan.ButterflyKnife", "Exotic.Strike_GoldenTemper.ButterflyKnife", 
    "Exotic.Strike_GammaDoppler_Pink.ButterflyKnife", "Exotic.Flower_Viola.ButterflyKnife", "Exotic.Base.ClassKnife", 
    "Exotic.ColorBlue.ClassKnife", "Exotic.BlackLava.ClassKnife", "Exotic.Zebra1.ClassKnife", "Exotic.Graffiti1.ClassKnife", 
    "Exotic.Sliver_Leaf_Black.ClassKnife", "Exotic.ForumViolet_CaliforniaGold1.ClassKnife", "Exotic.Rock_Opal.ClassKnife", 
    "Exotic.Rock_Ice.ClassKnife", "Exotic.MilkyWay3.ClassKnife", "Exotic.MilkyWay1.ClassKnife", "Exotic.Marble_Violet.ClassKnife", 
    "Exotic.Copper_Leaf.ClassKnife", "Exotic.Aluminum_Red.ClassKnife", "Exotic.Wood.ClassKnife", "Exotic.ColorGreen.ClassKnife", 
    "Exotic.CarbonFiber.ClassKnife", "Exotic.StrikeBase.ClassKnife", "Exotic.Strike_BlueSteel.ClassKnife", "Exotic.Strike_BorealForest.ClassKnife", 
    "Exotic.Strike_CaseHardened.ClassKnife", "Exotic.Strike_CrimsomWeb.ClassKnife", "Exotic.Strike_Fade.ClassKnife", 
    "Exotic.Strike_ForestDDPAT.ClassKnife", "Exotic.Strike_NightStripe.ClassKnife", "Exotic.Strike_SafariMesh.ClassKnife", 
    "Exotic.Strike_Scorched.ClassKnife", "Exotic.Strike_Slaughter.ClassKnife", "Exotic.Strike_Stained.ClassKnife", 
    "Exotic.Strike_UrbanMasked.ClassKnife", "Exotic.BP_S1_Rose.ClassKnife", "Exotic.BP_S3_Bunny.ClassKnife", "Exotic.BP_S2_Sigil.ClassKnife", 
    "Exotic.K_S5_White.ClassKnife", "Exotic.K_S1_Brown.ClassKnife", "Exotic.K_S1_Blue.ClassKnife", "Exotic.K_S1_Gold.ClassKnife", 
    "Exotic.K_S1_Red.ClassKnife", "Exotic.K_S1_Cyan.ClassKnife", "Exotic.K_S1_White.ClassKnife", "Exotic.K_S5_Brown.ClassKnife", 
    "Exotic.K_S5_Blue.ClassKnife", "Exotic.K_S5_Gold.ClassKnife", "Exotic.K_S5_Red.ClassKnife", "Exotic.K_S5_Cyan.ClassKnife", 
    "Exotic.Strike_GoldenTemper.ClassKnife", "Exotic.Strike_GammaDoppler_Pink.ClassKnife", "Exotic.Flower_Viola.ClassKnife", 
    "Exotic.StrikeBase.FlipKnife", "Exotic.MilkyWay3.FlipKnife", "Exotic.MilkyWay1.FlipKnife", "Exotic.BlackLava.FlipKnife", 
    "Exotic.Rock_Opal.FlipKnife", "Exotic.Sliver_Leaf_Black.FlipKnife", "Exotic.Rock_Ice.FlipKnife", "Exotic.Zebra1.FlipKnife", 
    "Exotic.Graffiti1.FlipKnife", "Exotic.ColorBlue.FlipKnife", "Exotic.Copper_Leaf.FlipKnife", "Exotic.Marble_Violet.FlipKnife", 
    "Exotic.Aluminum_Red.FlipKnife", "Exotic.ForumViolet_CaliforniaGold1.FlipKnife", "Exotic.Wood.FlipKnife", "Exotic.ColorGreen.FlipKnife", 
    "Exotic.CarbonFiber.FlipKnife", "Exotic.Strike_Autotronic.FlipKnife", "Exotic.Base.FlipKnife", "Exotic.Strike_BlackLaminate.FlipKnife", 
    "Exotic.Strike_BlueSteel.FlipKnife", "Exotic.Strike_BorealForest.FlipKnife", "Exotic.Strike_BrightWater.FlipKnife", 
    "Exotic.Strike_CaseHardened.FlipKnife", "Exotic.Strike_CrimsomWeb.FlipKnife", "Exotic.Strike_DamascusSteel.FlipKnife", 
    "Exotic.Strike_Doppler_Blue.FlipKnife", "Exotic.Strike_Doppler_Red.FlipKnife", "Exotic.Strike_Fade.FlipKnife", 
    "Exotic.Strike_ForestDDPAT.FlipKnife", "Exotic.Strike_Freehand.FlipKnife", "Exotic.Strike_GammaDoppler_Cyan.FlipKnife", 
    "Exotic.Strike_GammaDoppler_Green.FlipKnife", "Exotic.Strike_Lore.FlipKnife", "Exotic.Strike_MarbleFade.FlipKnife", 
    "Exotic.Strike_NightStripe.FlipKnife", "Exotic.Strike_RustCoat.FlipKnife", "Exotic.Strike_SafariMesh.FlipKnife", 
    "Exotic.Strike_Scorched.FlipKnife", "Exotic.Strike_Slaughter.FlipKnife", "Exotic.Strike_Stained.FlipKnife", 
    "Exotic.Strike_TigerTooth.FlipKnife", "Exotic.Strike_Ultraviolet.FlipKnife", "Exotic.Strike_UrbanMasked.FlipKnife", 
    "Exotic.BP_S1_Rose.FlipKnife", "Exotic.BP_S3_Bunny.FlipKnife", "Exotic.BP_S2_Sigil.FlipKnife", "Exotic.K_S1_White.FlipKnife", 
    "Exotic.K_S1_Brown.FlipKnife", "Exotic.K_S1_Blue.FlipKnife", "Exotic.K_S1_Gold.FlipKnife", "Exotic.K_S1_Red.FlipKnife", 
    "Exotic.K_S1_Cyan.FlipKnife", "Exotic.Strike_GoldenTemper.FlipKnife", "Exotic.Strike_GammaDoppler_Pink.FlipKnife", 
    "Exotic.Flower_Viola.FlipKnife", "Exotic.Sport_BigGame.Glove", "Exotic.Sport_Vice.Glove", "Exotic.HandWrapBase.Glove", 
    "Exotic.Sport_Amphibious.Glove", "Exotic.Sport_Nocts.Glove", "Exotic.Sport_Omega.Glove", "Exotic.Sport_HedgeMaze.Glove", 
    "Exotic.Sport_Arid.Glove", "Exotic.Sport_Pandora.Glove", "Exotic.Sport_BronzeMorph.Glove", "Exotic.Sport_Slingshot.Glove", 
    "Exotic.Sport_Superconductor.Glove", "Exotic.Sport_ScarletShamagh.Glove", "Exotic.SportBase.Glove", "Exotic.HandWrap_Warning.Glove", 
    "Exotic.HandWrap_Overprint.Glove", "Exotic.HandWrap_Badlands.Glove", "Exotic.HandWrap_Arboreal.Glove", "Exotic.HandWrap_Slaughter.Glove", 
    "Exotic.HandWrap_SpruceDDPAT.Glove", "Exotic.HandWrap_DuctTape.Glove", "Exotic.HandWrap_CobaltSkulls.Glove", "Exotic.HandWrap_Constrictor.Glove", 
    "Exotic.HandWrap_Leather.Glove", "Exotic.HandWrap_DesertShamagh.Glove", "Exotic.HandWrap_Giraffe.Glove", "Exotic.SlickBase.Glove", 
    "Exotic.Slick_RezanTheRed.Glove", "Exotic.Slick_BlackTie.Glove", "Exotic.Slick_Overtake.Glove", "Exotic.Slick_RacingGreen.Glove", 
    "Exotic.Slick_ImperialPlaid.Glove", "Exotic.Slick_Convoy.Glove", "Exotic.Slick_QueenJaguar.Glove", "Exotic.Slick_SnowLeopard.Glove", 
    "Exotic.Slick_KingSnake.Glove", "Exotic.Slick_Diamondback.Glove", "Exotic.Slick_CrimsonWeave.Glove", "Exotic.Slick_LunarWeave.Glove", 
    "Exotic.Sport_Blazing.Glove", "Exotic.BP_S2_Sigil.Glove", "Exotic.Ranked_S1.Glove", "Exotic.Ranked_S2.Glove", "Exotic.BP_S3_Bunny.Glove", 
    "Exotic.Sport_Occult.Glove", "Exotic.Sport_UltraViolent.Glove", "Exotic.BP_S1_Rose.Glove", "Exotic.Flower_Viola.Glove", 
    "Exotic.Base.GutKnife", "Exotic.Aluminum_Red.GutKnife", "Exotic.ColorBlue.GutKnife", "Exotic.Zebra1.GutKnife", "Exotic.BlackLava.GutKnife", 
    "Exotic.Sliver_Leaf_Black.GutKnife", "Exotic.Graffiti1.GutKnife", "Exotic.Rock_Opal.GutKnife", "Exotic.Rock_Ice.GutKnife", 
    "Exotic.MilkyWay3.GutKnife", "Exotic.MilkyWay1.GutKnife", "Exotic.Marble_Violet.GutKnife", "Exotic.ForumViolet_CaliforniaGold1.GutKnife", 
    "Exotic.Copper_Leaf.GutKnife", "Exotic.Wood.GutKnife", "Exotic.ColorGreen.GutKnife", "Exotic.CarbonFiber.GutKnife", 
    "Exotic.Strike_Autotronic.GutKnife", "Exotic.Strike_UrbanMasked.GutKnife", "Exotic.Strike_BlackLaminate.GutKnife", 
    "Exotic.Strike_BlueSteel.GutKnife", "Exotic.Strike_BorealForest.GutKnife", "Exotic.Strike_BrightWater.GutKnife", 
    "Exotic.Strike_CaseHardened.GutKnife", "Exotic.Strike_CrimsomWeb.GutKnife", "Exotic.Strike_DamascusSteel.GutKnife", 
    "Exotic.Strike_Doppler_Blue.GutKnife", "Exotic.Strike_Doppler_Red.GutKnife", "Exotic.Strike_Fade.GutKnife", "Exotic.Strike_ForestDDPAT.GutKnife", 
    "Exotic.Strike_Freehand.GutKnife", "Exotic.Strike_GammaDoppler_Cyan.GutKnife", "Exotic.Strike_GammaDoppler_Green.GutKnife", 
    "Exotic.Strike_Lore.GutKnife", "Exotic.Strike_MarbleFade.GutKnife", "Exotic.Strike_NightStripe.GutKnife", "Exotic.Strike_RustCoat.GutKnife", 
    "Exotic.Strike_SafariMesh.GutKnife", "Exotic.Strike_Scorched.GutKnife", "Exotic.Strike_Slaughter.GutKnife", "Exotic.Strike_Stained.GutKnife", 
    "Exotic.Strike_TigerTooth.GutKnife", "Exotic.Strike_Ultraviolet.GutKnife", "Exotic.BP_S1_Rose.GutKnife", "Exotic.BP_S3_Bunny.GutKnife", 
    "Exotic.BP_S2_Sigil.GutKnife", "Exotic.K_S1_White.GutKnife", "Exotic.K_S1_Brown.GutKnife", "Exotic.K_S1_Blue.GutKnife", 
    "Exotic.K_S1_Gold.GutKnife", "Exotic.K_S1_Red.GutKnife", "Exotic.K_S1_Cyan.GutKnife", "Exotic.Strike_GoldenTemper.GutKnife", 
    "Exotic.Strike_GammaDoppler_Pink.GutKnife", "Exotic.Flower_Viola.GutKnife", "Exotic.Base.Karambit", "Exotic.Graffiti1.Karambit", 
    "Exotic.Zebra1.Karambit", "Exotic.Aluminum_Red.Karambit", "Exotic.Rock_Ice.Karambit", "Exotic.Sliver_Leaf_Black.Karambit", 
    "Exotic.BlackLava.Karambit", "Exotic.MilkyWay1.Karambit", "Exotic.MilkyWay3.Karambit", "Exotic.ColorBlue.Karambit", 
    "Exotic.Copper_Leaf.Karambit", "Exotic.Rock_Opal.Karambit", "Exotic.Marble_Violet.Karambit", "Exotic.ForumViolet_CaliforniaGold1.Karambit", 
    "Exotic.Wood.Karambit", "Exotic.ColorGreen.Karambit", "Exotic.CarbonFiber.Karambit", "Exotic.Strike_Autotronic.Karambit", 
    "Exotic.StrikeBase.Karambit", "Exotic.Strike_BlackLaminate.Karambit", "Exotic.Strike_BlueSteel.Karambit", "Exotic.Strike_BorealForest.Karambit", 
    "Exotic.Strike_BrightWater.Karambit", "Exotic.Strike_CaseHardened.Karambit", "Exotic.Strike_CrimsomWeb.Karambit", 
    "Exotic.Strike_DamascusSteel.Karambit", "Exotic.Strike_Doppler_Blue.Karambit", "Exotic.Strike_Doppler_Red.Karambit", 
    "Exotic.Strike_Fade.Karambit", "Exotic.Strike_ForestDDPAT.Karambit", "Exotic.Strike_Freehand.Karambit", "Exotic.Strike_GammaDoppler_Cyan.Karambit", 
    "Exotic.Strike_GammaDoppler_Green.Karambit", "Exotic.Strike_Lore.Karambit", "Exotic.Strike_MarbleFade.Karambit", 
    "Exotic.Strike_NightStripe.Karambit", "Exotic.Strike_RustCoat.Karambit", "Exotic.Strike_SafariMesh.Karambit", "Exotic.Strike_Scorched.Karambit", 
    "Exotic.Strike_Slaughter.Karambit", "Exotic.Strike_Stained.Karambit", "Exotic.Strike_TigerTooth.Karambit", "Exotic.Strike_Ultraviolet.Karambit", 
    "Exotic.Strike_UrbanMasked.Karambit", "Exotic.BP_S1_Rose.Karambit", "Exotic.BP_S2_Sigil.Karambit", "Exotic.K_S1_White.Karambit", 
    "Exotic.K_S1_Brown.Karambit", "Exotic.K_S1_Blue.Karambit", "Exotic.K_S1_Gold.Karambit", "Exotic.K_S1_Red.Karambit", "Exotic.K_S1_Cyan.Karambit", 
    "Exotic.Strike_GoldenTemper.Karambit", "Exotic.Strike_GammaDoppler_Pink.Karambit", "Exotic.Flower_Viola.Karambit", "Exotic.Base.ShadowDaggers", 
    "Exotic.Aluminum_Red.ShadowDaggers", "Exotic.ColorBlue.ShadowDaggers", "Exotic.Zebra1.ShadowDaggers", "Exotic.BlackLava.ShadowDaggers", 
    "Exotic.Sliver_Leaf_Black.ShadowDaggers", "Exotic.Graffiti1.ShadowDaggers", "Exotic.Rock_Opal.ShadowDaggers", "Exotic.Rock_Ice.ShadowDaggers", 
    "Exotic.MilkyWay3.ShadowDaggers", "Exotic.MilkyWay1.ShadowDaggers", "Exotic.Marble_Violet.ShadowDaggers", "Exotic.ForumViolet_CaliforniaGold1.ShadowDaggers", 
    "Exotic.Copper_Leaf.ShadowDaggers", "Exotic.Wood.ShadowDaggers", "Exotic.ColorGreen.ShadowDaggers", "Exotic.CarbonFiber.ShadowDaggers", 
    "Exotic.Strike_UrbanMasked.ShadowDaggers", "Exotic.Strike_Autotronic.ShadowDaggers", "Exotic.Strike_BlackLaminate.ShadowDaggers", 
    "Exotic.Strike_BlueSteel.ShadowDaggers", "Exotic.Strike_BorealForest.ShadowDaggers", "Exotic.Strike_BrightWater.ShadowDaggers", 
    "Exotic.Strike_CaseHardened.ShadowDaggers", "Exotic.Strike_CrimsomWeb.ShadowDaggers", "Exotic.Strike_DamascusSteel.ShadowDaggers", 
    "Exotic.Strike_Doppler_Blue.ShadowDaggers", "Exotic.Strike_Doppler_Red.ShadowDaggers", "Exotic.Strike_Fade.ShadowDaggers", 
    "Exotic.Strike_ForestDDPAT.ShadowDaggers", "Exotic.Strike_Freehand.ShadowDaggers", "Exotic.Strike_GammaDoppler_Cyan.ShadowDaggers", 
    "Exotic.Strike_GammaDoppler_Green.ShadowDaggers", "Exotic.Strike_Lore.ShadowDaggers", "Exotic.Strike_MarbleFade.ShadowDaggers", 
    "Exotic.Strike_NightStripe.ShadowDaggers", "Exotic.Strike_RustCoat.ShadowDaggers", "Exotic.Strike_SafariMesh.ShadowDaggers", 
    "Exotic.Strike_Scorched.ShadowDaggers", "Exotic.Strike_Slaughter.ShadowDaggers", "Exotic.Strike_Stained.ShadowDaggers", 
    "Exotic.Strike_TigerTooth.ShadowDaggers", "Exotic.Strike_Ultraviolet.ShadowDaggers", "Exotic.BP_S1_Rose.ShadowDaggers", 
    "Exotic.BP_S3_Bunny.ShadowDaggers", "Exotic.BP_S2_Sigil.ShadowDaggers", "Exotic.K_S1_White.ShadowDaggers", "Exotic.K_S1_Brown.ShadowDaggers", 
    "Exotic.K_S1_Blue.ShadowDaggers", "Exotic.K_S1_Gold.ShadowDaggers", "Exotic.K_S1_Red.ShadowDaggers", "Exotic.K_S1_Cyan.ShadowDaggers", 
    "Exotic.Strike_GoldenTemper.ShadowDaggers", "Exotic.Strike_GammaDoppler_Pink.ShadowDaggers", "Exotic.Flower_Viola.ShadowDaggers", 
    "Exotic.Base.Skeleton", "Exotic.ColorBlue.Skeleton", "Exotic.BlackLava.Skeleton", "Exotic.Zebra1.Skeleton", "Exotic.Graffiti1.Skeleton", 
    "Exotic.Sliver_Leaf_Black.Skeleton", "Exotic.ForumViolet_CaliforniaGold1.Skeleton", "Exotic.Rock_Opal.Skeleton", "Exotic.Rock_Ice.Skeleton", 
    "Exotic.MilkyWay3.Skeleton", "Exotic.MilkyWay1.Skeleton", "Exotic.Marble_Violet.Skeleton", "Exotic.Copper_Leaf.Skeleton", 
    "Exotic.Aluminum_Red.Skeleton", "Exotic.Wood.Skeleton", "Exotic.ColorGreen.Skeleton", "Exotic.CarbonFiber.Skeleton", 
    "Exotic.Strike_CrimsomWeb.Skeleton", "Exotic.Strike_BrightWater.Skeleton", "Exotic.Strike_Slaughter.Skeleton", "Exotic.Strike_BorealForest.Skeleton", 
    "Exotic.Strike_BlueSteel.Skeleton", "Exotic.Strike_DamascusSteel.Skeleton", "Exotic.Strike_UrbanMasked.Skeleton", 
    "Exotic.Strike_Ultraviolet.Skeleton", "Exotic.Strike_TigerTooth.Skeleton", "Exotic.Strike_Scorched.Skeleton", "Exotic.Strike_SafariMesh.Skeleton", 
    "Exotic.Strike_RustCoat.Skeleton", "Exotic.Strike_NightStripe.Skeleton", "Exotic.Strike_MarbleFade.Skeleton", "Exotic.Strike_CaseHardened.Skeleton", 
    "Exotic.Strike_GammaDoppler_Green.Skeleton", "Exotic.Strike_GammaDoppler_Cyan.Skeleton", "Exotic.Strike_Freehand.Skeleton", 
    "Exotic.Strike_ForestDDPAT.Skeleton", "Exotic.Strike_Fade.Skeleton", "Exotic.Strike_Doppler_Blue.Skeleton", "Exotic.Strike_Doppler_Red.Skeleton", 
    "Exotic.BP_S1_Rose.Skeleton", "Exotic.BP_S2_Sigil.Skeleton", "Exotic.K_S1_White.Skeleton", "Exotic.K_S5_White.Skeleton", 
    "Exotic.K_S1_Brown.Skeleton", "Exotic.K_S1_Blue.Skeleton", "Exotic.K_S1_Gold.Skeleton", "Exotic.K_S1_Red.Skeleton", "Exotic.K_S1_Cyan.Skeleton", 
    "Exotic.K_S5_Brown.Skeleton", "Exotic.K_S5_Blue.Skeleton", "Exotic.K_S5_Gold.Skeleton", "Exotic.K_S5_Red.Skeleton", "Exotic.K_S5_Cyan.Skeleton", 
    "Exotic.Strike_GoldenTemper.Skeleton", "Exotic.Strike_GammaDoppler_Pink.Skeleton", "Exotic.Flower_Viola.Skeleton", "Exotic.Base.Kukri", 
    "Exotic.ColorBlue.Kukri", "Exotic.BlackLava.Kukri", "Exotic.Zebra1.Kukri", "Exotic.Graffiti1.Kukri", "Exotic.Sliver_Leaf_Black.Kukri", 
    "Exotic.ForumViolet_CaliforniaGold1.Kukri", "Exotic.Rock_Opal.Kukri", "Exotic.Rock_Ice.Kukri", "Exotic.MilkyWay3.Kukri", 
    "Exotic.MilkyWay1.Kukri", "Exotic.Marble_Violet.Kukri", "Exotic.Copper_Leaf.Kukri", "Exotic.Aluminum_Red.Kukri", "Exotic.Wood.Kukri", 
    "Exotic.ColorGreen.Kukri", "Exotic.CarbonFiber.Kukri", "Exotic.Strike_Stained.Kukri", "Exotic.Strike_Slaughter.Kukri", 
    "Exotic.Strike_MarbleFade.Kukri", "Exotic.Strike_NightStripe.Kukri", "Exotic.Strike_SafariMesh.Kukri", "Exotic.Strike_UrbanMasked.Kukri", 
    "Exotic.Strike_Ultraviolet.Kukri", "Exotic.Strike_Scorched.Kukri", "Exotic.Strike_RustCoat.Kukri", "Exotic.Strike_TigerTooth.Kukri", 
    "Exotic.Strike_BlueSteel.Kukri", "Exotic.Strike_BorealForest.Kukri", "Exotic.Strike_BrightWater.Kukri", "Exotic.Strike_CaseHardened.Kukri", 
    "Exotic.Strike_CrimsomWeb.Kukri", "Exotic.Strike_DamascusSteel.Kukri", "Exotic.Strike_Doppler_Blue.Kukri", "Exotic.Strike_Doppler_Red.Kukri", 
    "Exotic.Strike_Fade.Kukri", "Exotic.Strike_ForestDDPAT.Kukri", "Exotic.Strike_Freehand.Kukri", "Exotic.Strike_GammaDoppler_Cyan.Kukri", 
    "Exotic.Strike_GammaDoppler_Green.Kukri", "Exotic.BP_S1_Rose.Kukri", "Exotic.BP_S3_Bunny.Kukri", "Exotic.BP_S2_Sigil.Kukri", 
    "Exotic.Strike_GoldenTemper.Kukri", "Exotic.Strike_GammaDoppler_Pink.Kukri", "Exotic.Flower_Viola.Kukri", "Exotic.Base.Axe", 
    "Exotic.ColorBlue.Axe", "Exotic.BlackLava.Axe", "Exotic.Zebra1.Axe", "Exotic.Graffiti1.Axe", "Exotic.Sliver_Leaf_Black.Axe", 
    "Exotic.ForumViolet_CaliforniaGold1.Axe", "Exotic.Rock_Opal.Axe", "Exotic.Rock_Ice.Axe", "Exotic.MilkyWay3.Axe", "Exotic.MilkyWay1.Axe", 
    "Exotic.Marble_Violet.Axe", "Exotic.Copper_Leaf.Axe", "Exotic.Aluminum_Red.Axe", "Exotic.Wood.Axe", "Exotic.ColorGreen.Axe", 
    "Exotic.CarbonFiber.Axe", "Exotic.Strike_UrbanMasked.Axe", "Exotic.BP_S2_Sigil.Axe", "Exotic.BP_S2_Shatterline.Axe", "Exotic.Strike_BlueSteel.Axe", 
    "Exotic.Strike_BorealForest.Axe", "Exotic.Strike_BrightWater.Axe", "Exotic.Strike_CaseHardened.Axe", "Exotic.Strike_CrimsomWeb.Axe", 
    "Exotic.Strike_DamascusSteel.Axe", "Exotic.Strike_Doppler_Blue.Axe", "Exotic.Strike_Doppler_Red.Axe", "Exotic.Strike_Fade.Axe", 
    "Exotic.Strike_ForestDDPAT.Axe", "Exotic.Strike_Freehand.Axe", "Exotic.Strike_GammaDoppler_Cyan.Axe", "Exotic.Strike_GammaDoppler_Green.Axe", 
    "Exotic.Strike_MarbleFade.Axe", "Exotic.Strike_NightStripe.Axe", "Exotic.Strike_RustCoat.Axe", "Exotic.Strike_SafariMesh.Axe", 
    "Exotic.Strike_Scorched.Axe", "Exotic.Strike_Slaughter.Axe", "Exotic.Strike_Stained.Axe", "Exotic.Strike_TigerTooth.Axe", 
    "Exotic.Strike_Ultraviolet.Axe", "Exotic.BP_S1_Rose.Axe", "Exotic.BP_S3_Bunny.Axe", "Exotic.K_S5_White.Axe", "Exotic.K_S5_Brown.Axe", 
    "Exotic.K_S5_Blue.Axe", "Exotic.K_S5_Gold.Axe", "Exotic.K_S5_Red.Axe", "Exotic.K_S5_Cyan.Axe", "Exotic.Strike_GammaDoppler_Pink.Axe", 
    "Exotic.Strike_GoldenTemper.Axe", "Exotic.Flower_Viola.Axe", "Exotic.Base.CordKnife", "Exotic.ColorBlue.CordKnife", "Exotic.BlackLava.CordKnife", 
    "Exotic.Zebra1.CordKnife", "Exotic.Graffiti1.CordKnife", "Exotic.Sliver_Leaf_Black.CordKnife", "Exotic.ForumViolet_CaliforniaGold1.CordKnife", 
    "Exotic.Strike_UrbanMasked.CordKnife", "Exotic.Rock_Ice.CordKnife", "Exotic.MilkyWay3.CordKnife", "Exotic.MilkyWay1.CordKnife", 
    "Exotic.Marble_Violet.CordKnife", "Exotic.Copper_Leaf.CordKnife", "Exotic.Aluminum_Red.CordKnife", "Exotic.Wood.CordKnife", 
    "Exotic.ColorGreen.CordKnife", "Exotic.CarbonFiber.CordKnife", "Exotic.Rock_Opal.CordKnife", "Exotic.Strike_SafariMesh.CordKnife", 
    "Exotic.Strike_RustCoat.CordKnife", "Exotic.Strike_Scorched.CordKnife", "Exotic.Strike_Slaughter.CordKnife", "Exotic.Strike_Stained.CordKnife", 
    "Exotic.Strike_TigerTooth.CordKnife", "Exotic.Strike_Ultraviolet.CordKnife", "Exotic.Strike_BlueSteel.CordKnife", "Exotic.Strike_BorealForest.CordKnife", 
    "Exotic.Strike_BrightWater.CordKnife", "Exotic.Strike_CrimsomWeb.CordKnife", "Exotic.Strike_DamascusSteel.CordKnife", 
    "Exotic.Strike_Doppler_Red.CordKnife", "Exotic.Strike_Doppler_Blue.CordKnife", "Exotic.Strike_Fade.CordKnife", "Exotic.Strike_ForestDDPAT.CordKnife", 
    "Exotic.Strike_Freehand.CordKnife", "Exotic.Strike_GammaDoppler_Cyan.CordKnife", "Exotic.Strike_GammaDoppler_Green.CordKnife", 
    "Exotic.Strike_CaseHardened.CordKnife", "Exotic.Strike_MarbleFade.CordKnife", "Exotic.Strike_NightStripe.CordKnife", "Exotic.BP_S1_Rose.CordKnife", 
    "Exotic.BP_S3_Bunny.CordKnife", "Exotic.BP_S2_Sigil.CordKnife", "Exotic.Strike_GoldenTemper.CordKnife", "Exotic.Strike_GammaDoppler_Pink.CordKnife", 
    "Exotic.Flower_Viola.CordKnife", "Exotic.Base.Shovel", "Exotic.Strike_Fade.Shovel", "Exotic.Strike_UrbanMasked.Shovel", "Exotic.Strike_Ultraviolet.Shovel", 
    "Exotic.Strike_Stained.Shovel", "Exotic.Strike_Slaughter.Shovel", "Exotic.Strike_Scorched.Shovel", "Exotic.Strike_SafariMesh.Shovel", 
    "Exotic.Strike_RustCoat.Shovel", "Exotic.Strike_NightStripe.Shovel", "Exotic.Strike_MarbleFade.Shovel", "Exotic.Strike_CaseHardened.Shovel", 
    "Exotic.Strike_GammaDoppler_Green.Shovel", "Exotic.Strike_GammaDoppler_Cyan.Shovel", "Exotic.Strike_Freehand.Shovel", "Exotic.Strike_ForestDDPAT.Shovel", 
    "Exotic.Strike_Doppler_Blue.Shovel", "Exotic.Strike_Doppler_Red.Shovel", "Exotic.Strike_DamascusSteel.Shovel", "Exotic.Strike_CrimsomWeb.Shovel", 
    "Exotic.Strike_BrightWater.Shovel", "Exotic.Strike_BorealForest.Shovel", "Exotic.Strike_BlueSteel.Shovel", "Exotic.Aluminum_Red.Shovel", 
    "Exotic.BlackLava.Shovel", "Exotic.CarbonFiber.Shovel", "Exotic.ColorBlue.Shovel", "Exotic.ColorGreen.Shovel", "Exotic.Copper_Leaf.Shovel", 
    "Exotic.ForumViolet_CaliforniaGold1.Shovel", "Exotic.Graffiti1.Shovel", "Exotic.Marble_Violet.Shovel", "Exotic.MilkyWay1.Shovel", 
    "Exotic.MilkyWay3.Shovel", "Exotic.Rock_Ice.Shovel", "Exotic.Rock_Opal.Shovel", "Exotic.Sliver_Leaf_Black.Shovel", "Exotic.Wood.Shovel", 
    "Exotic.Zebra1.Shovel", "Exotic.Strike_TigerTooth.Shovel", "Exotic.BP_S1_Rose.Shovel", "Exotic.K_S5_White.Shovel", "Exotic.K_S5_Brown.Shovel", 
    "Exotic.K_S5_Blue.Shovel", "Exotic.K_S5_Gold.Shovel", "Exotic.K_S5_Red.Shovel", "Exotic.K_S5_Cyan.Shovel", "Exotic.Strike_GoldenTemper.Shovel", 
    "Exotic.Strike_GammaDoppler_Pink.Shovel", "Exotic.Flower_Viola.Shovel", "Exotic.Base.Bowie", "Exotic.ColorBlue.Bowie", "Exotic.BlackLava.Bowie", 
    "Exotic.Zebra1.Bowie", "Exotic.Graffiti1.Bowie", "Exotic.Sliver_Leaf_Black.Bowie", "Exotic.ForumViolet_CaliforniaGold1.Bowie", "Exotic.Rock_Opal.Bowie", 
    "Exotic.Rock_Ice.Bowie", "Exotic.MilkyWay3.Bowie", "Exotic.MilkyWay1.Bowie", "Exotic.Marble_Violet.Bowie", "Exotic.Copper_Leaf.Bowie", 
    "Exotic.Aluminum_Red.Bowie", "Exotic.Wood.Bowie", "Exotic.ColorGreen.Bowie", "Exotic.CarbonFiber.Bowie", "Exotic.Strike_Autotronic.Bowie", 
    "Exotic.Strike_BlackLaminate.Bowie", "Exotic.Strike_BlueSteel.Bowie", "Exotic.Strike_BorealForest.Bowie", "Exotic.Strike_BrightWater.Bowie", 
    "Exotic.Strike_CrimsomWeb.Bowie", "Exotic.Strike_DamascusSteel.Bowie", "Exotic.Strike_Doppler_Red.Bowie", "Exotic.Strike_Doppler_Blue.Bowie", 
    "Exotic.Strike_Fade.Bowie", "Exotic.Strike_ForestDDPAT.Bowie", "Exotic.Strike_Freehand.Bowie", "Exotic.Strike_GammaDoppler_Cyan.Bowie", 
    "Exotic.Strike_GammaDoppler_Green.Bowie", "Exotic.Strike_CaseHardened.Bowie", "Exotic.Strike_Lore.Bowie", "Exotic.Strike_MarbleFade.Bowie", 
    "Exotic.Strike_NightStripe.Bowie", "Exotic.Strike_RustCoat.Bowie", "Exotic.Strike_SafariMesh.Bowie", "Exotic.Strike_Scorched.Bowie", 
    "Exotic.Strike_Slaughter.Bowie", "Exotic.Strike_Stained.Bowie", "Exotic.Strike_TigerTooth.Bowie", "Exotic.Strike_Ultraviolet.Bowie", 
    "Exotic.Strike_UrbanMasked.Bowie", "Exotic.BP_S1_Rose.Bowie", "Exotic.BP_S2_Sigil.Bowie", "Exotic.Strike_GoldenTemper.Bowie", 
    "Exotic.Strike_GammaDoppler_Pink.Bowie", "Exotic.Flower_Viola.Bowie", "Exotic.Base.Falchion", "Exotic.Aluminum_Red.Falchion", "Exotic.ColorBlue.Falchion", 
    "Exotic.Zebra1.Falchion", "Exotic.BlackLava.Falchion", "Exotic.Graffiti1.Falchion", "Exotic.Rock_Opal.Falchion", "Exotic.Rock_Ice.Falchion", 
    "Exotic.MilkyWay3.Falchion", "Exotic.MilkyWay1.Falchion", "Exotic.Marble_Violet.Falchion", "Exotic.ForumViolet_CaliforniaGold1.Falchion", 
    "Exotic.Copper_Leaf.Falchion", "Exotic.Wood.Falchion", "Exotic.ColorGreen.Falchion", "Exotic.CarbonFiber.Falchion", "Exotic.Sliver_Leaf_Black.Falchion", 
    "Exotic.BP_S1_Rose.Falchion", "Exotic.Strike_BrightWater.Falchion", "Exotic.Strike_BorealForest.Falchion", "Exotic.Strike_BlueSteel.Falchion", 
    "Exotic.Strike_BlackLaminate.Falchion", "Exotic.Strike_Autotronic.Falchion", "Exotic.Strike_UrbanMasked.Falchion", "Exotic.Strike_Ultraviolet.Falchion", 
    "Exotic.Strike_TigerTooth.Falchion", "Exotic.Strike_Stained.Falchion", "Exotic.Strike_Slaughter.Falchion", "Exotic.Strike_Scorched.Falchion", 
    "Exotic.Strike_SafariMesh.Falchion", "Exotic.Strike_RustCoat.Falchion", "Exotic.Strike_NightStripe.Falchion", "Exotic.Strike_MarbleFade.Falchion", 
    "Exotic.Strike_Lore.Falchion", "Exotic.Strike_CaseHardened.Falchion", "Exotic.Strike_GammaDoppler_Green.Falchion", "Exotic.Strike_GammaDoppler_Cyan.Falchion", 
    "Exotic.Strike_Freehand.Falchion", "Exotic.Strike_ForestDDPAT.Falchion", "Exotic.Strike_Fade.Falchion", "Exotic.Strike_Doppler_Blue.Falchion", 
    "Exotic.Strike_Doppler_Red.Falchion", "Exotic.Strike_DamascusSteel.Falchion", "Exotic.Strike_CrimsomWeb.Falchion", "Exotic.BP_S2_Sigil.Falchion", 
    "Exotic.K_S1_White.Falchion", "Exotic.K_S5_White.Falchion", "Exotic.K_S1_Brown.Falchion", "Exotic.K_S1_Blue.Falchion", "Exotic.K_S1_Gold.Falchion", 
    "Exotic.K_S1_Red.Falchion", "Exotic.K_S1_Cyan.Falchion", "Exotic.K_S5_Brown.Falchion", "Exotic.K_S5_Blue.Falchion", "Exotic.K_S5_Gold.Falchion", 
    "Exotic.K_S5_Red.Falchion", "Exotic.K_S5_Cyan.Falchion", "Exotic.Strike_GoldenTemper.Falchion", "Exotic.Strike_GammaDoppler_Pink.Falchion", 
    "Exotic.Flower_Viola.Falchion", "Exotic.Strike_BlueSteel.Wakizashi", "Exotic.MilkyWay1.Wakizashi", "Exotic.Zebra1.Wakizashi", "Exotic.BP_S1_Rose.Wakizashi", 
    "Exotic.Aluminum_Red.Wakizashi", "Exotic.BlackLava.Wakizashi", "Exotic.CarbonFiber.Wakizashi", "Exotic.ColorBlue.Wakizashi", "Exotic.ColorGreen.Wakizashi", 
    "Exotic.Wood.Wakizashi", "Exotic.Copper_Leaf.Wakizashi", "Exotic.ForumViolet_CaliforniaGold1.Wakizashi", "Exotic.Graffiti1.Wakizashi", 
    "Exotic.Marble_Violet.Wakizashi", "Exotic.Rock_Ice.Wakizashi", "Exotic.MilkyWay3.Wakizashi", "Exotic.Rock_Opal.Wakizashi", 
    "Exotic.Sliver_Leaf_Black.Wakizashi", "Exotic.Strike_UrbanMasked.Wakizashi", "Exotic.Strike_Ultraviolet.Wakizashi", "Exotic.Strike_TigerTooth.Wakizashi", 
    "Exotic.Strike_Stained.Wakizashi", "Exotic.Strike_Slaughter.Wakizashi", "Exotic.Strike_Scorched.Wakizashi", "Exotic.Strike_SafariMesh.Wakizashi", 
    "Exotic.Strike_RustCoat.Wakizashi", "Exotic.Strike_NightStripe.Wakizashi", "Exotic.Strike_MarbleFade.Wakizashi", "Exotic.Strike_CaseHardened.Wakizashi", 
    "Exotic.Strike_GammaDoppler_Green.Wakizashi", "Exotic.Strike_GammaDoppler_Cyan.Wakizashi", "Exotic.Strike_Freehand.Wakizashi", 
    "Exotic.Strike_ForestDDPAT.Wakizashi", "Exotic.Strike_Fade.Wakizashi", "Exotic.Strike_Doppler_Blue.Wakizashi", "Exotic.Strike_Doppler_Red.Wakizashi", 
    "Exotic.Strike_DamascusSteel.Wakizashi", "Exotic.Strike_CrimsomWeb.Wakizashi", "Exotic.Strike_BrightWater.Wakizashi", "Exotic.Strike_BorealForest.Wakizashi", 
    "Exotic.Base.Wakizashi", "Exotic.K_S5_White.Wakizashi", "Exotic.K_S5_Brown.Wakizashi", "Exotic.K_S5_Blue.Wakizashi", "Exotic.K_S5_Gold.Wakizashi", 
    "Exotic.K_S5_Red.Wakizashi", "Exotic.K_S5_Cyan.Wakizashi", "Exotic.Strike_GoldenTemper.Wakizashi", "Exotic.Strike_GammaDoppler_Pink.Wakizashi", 
    "Exotic.Flower_Viola.Wakizashi", "Exotic.MilkyWay1.CrookSword", "Exotic.Zebra1.CrookSword", "Exotic.Aluminum_Red.CrookSword", "Exotic.BlackLava.CrookSword", 
    "Exotic.CarbonFiber.CrookSword", "Exotic.ColorBlue.CrookSword", "Exotic.ColorGreen.CrookSword", "Exotic.Wood.CrookSword", "Exotic.Copper_Leaf.CrookSword", 
    "Exotic.ForumViolet_CaliforniaGold1.CrookSword", "Exotic.Graffiti1.CrookSword", "Exotic.Marble_Violet.CrookSword", "Exotic.Rock_Ice.CrookSword", 
    "Exotic.MilkyWay3.CrookSword", "Exotic.Rock_Opal.CrookSword", "Exotic.Sliver_Leaf_Black.CrookSword", "Exotic.Strike_UrbanMasked.CrookSword", 
    "Exotic.Strike_BlueSteel.CrookSword", "Exotic.Strike_BorealForest.CrookSword", "Exotic.Strike_BrightWater.CrookSword", "Exotic.Strike_CrimsomWeb.CrookSword", 
    "Exotic.Strike_DamascusSteel.CrookSword", "Exotic.Strike_Doppler_Red.CrookSword", "Exotic.Strike_Doppler_Blue.CrookSword", "Exotic.Strike_Fade.CrookSword", 
    "Exotic.Strike_ForestDDPAT.CrookSword", "Exotic.Strike_Freehand.CrookSword", "Exotic.Strike_GammaDoppler_Cyan.CrookSword", 
    "Exotic.Strike_GammaDoppler_Green.CrookSword", "Exotic.Strike_CaseHardened.CrookSword", "Exotic.Strike_MarbleFade.CrookSword", 
    "Exotic.Strike_NightStripe.CrookSword", "Exotic.Strike_RustCoat.CrookSword", "Exotic.Strike_SafariMesh.CrookSword", "Exotic.Strike_Scorched.CrookSword", 
    "Exotic.Strike_Slaughter.CrookSword", "Exotic.Strike_Stained.CrookSword", "Exotic.Strike_TigerTooth.CrookSword", "Exotic.Strike_Ultraviolet.CrookSword", 
    "Exotic.Base.CrookSword", "Exotic.Strike_GoldenTemper.CrookSword", "Exotic.Strike_GammaDoppler_Pink.CrookSword", "Exotic.Flower_Viola.CrookSword", 
    "Exotic.RGB.Eternium.Glove.Exotic", "Exotic.Umbra.Glove.Exotic", "Exotic.Umbra.ButterflyKnife.Exotic", "Exotic.TT_S1.Glove_Theme2.Exotic", 
    "Exotic.RGB.Watcher.Karambit.Exotic", "Exotic.TT_S1.Glove_Theme3.Exotic", "Exotic.Starlight.Glove.Exotic", "Exotic.RGB.S4.VioletFiend.Shovel.Exotic", 
    "Exotic.Steam.Bayonet_M9.Exotic", "Exotic.Flarion.Glove.Exotic", "Exotic.Starfade.Glove.Exotic", "Exotic.ScalySawTeeth.Exotic", 
    "Exotic.Easter2026.Glove.Exotic", "Exotic.ObsidianGild.Glove.Exotic", "Exotic.Watcher_Sky.Glove.Exotic", "Exotic.Easter2026.RadishBlade.Exotic", 
    "Exotic.RGB.NightHunt.Glove.Exotic", "Exotic.FlipKnife.Eternium.Exotic", "Exotic.Kukri.Ashrend.Exotic", "Exotic.Starveil.Wakizashi.Exotic", 
    "Exotic.Karambit.Starry.Exotic", "Exotic.Starveil.Glove.Exotic", "Exotic.Glove.Starry.Exotic", "Exotic.Glove.NeonCore.Exotic", "Exotic.Glove.Luna.Exotic", 
    "Exotic.Glove.Eternium.Exotic", "Exotic.Absolution.Exotic", "Exotic.Flarion.FlipKnife.Exotic", "Exotic.AbyssPrism.Glove.Exotic", 
    "Exotic.Axe.NeonCore.Exotic", "Exotic.Bloodmoon.ButterflyKnife.Exotic", "Exotic.Bloodmoon.Glove.Exotic", "Exotic.ButterflyKnife.Luna.Exotic", 
    "Exotic.Starlight.Karambit.Exotic", "Exotic.Starember.Karambit.Exotic", "Exotic.NightHunt.Glove.Exotic", "Exotic.ObsidianGild.Axe.Exotic", 
    "Exotic.AbyssPrism.Axe.Exotic", "Exotic.Starlight.Wakizashi.Exotic", "Exotic.Nya.Glove.Exotic", "Exotic.RGB.Luna.Glove.Exotic", 
    "Exotic.Starfade.Wakizashi.Exotic", "Exotic.Nya_Black.Glove.Exotic", "Exotic.RGB.Starry.Glove.Exotic", "Exotic.TT_S1.Glove.Exotic", 
    "Exotic.RGB.TT_S1.Glove.Exotic", "Exotic.RGB.ClassKnife.Exotic", "Exotic.RGB.NeonCore.Glove.Exotic", "Exotic.Steam.Glove.Exotic", 
    "Exotic.RGB.Starry.Karambit.Exotic", "Exotic.RGB.ScalySawTeeth.Exotic", "Exotic.RGB.NeonCore.Axe.Exotic", "Exotic.RGB.Luna.ButterflyKnife.Exotic", 
    "Exotic.RGB.Fools2026.Lollipop.Exotic", "Exotic.RGB.Eternium.FlipKnife.Exotic", "Exotic.RGB.Ashrend.Kukri.Exotic", "Exotic.Nya.Wakizashi.Exotic", 
    "Exotic.Nya_Black.Wakizashi.Exotic", "Exotic.RGB.Steam.Glove.Exotic", "Exotic.SteamRedvalve.Glove.Exotic", "Exotic.RGB.Steam.Bayonet_M9.Exotic", 
    "Exotic.SteamRedvalve.Bayonet_M9.Exotic", "Exotic.S4.RedSeraph.Shovel.Exotic", "Exotic.RGB.S4.VioletFiend.Glove.Exotic", "Exotic.S4.RedSeraph.Glove.Exotic", 
    "Exotic.S4.VioletFiend.Glove.Exotic", "Exotic.S4.WildFiend.Glove.Exotic", "Exotic.S4.WildFiend.Shovel.Exotic", "Exotic.S4.VioletFiend.Shovel.Exotic", 
    "Exotic.Fools2026.Trumpet.Exotic", "Exotic.Fools2026.Lollipop.Exotic", "Exotic.Watcher.Karambit.Exotic", "Exotic.TT_S1.Glove_Theme1.Exotic", 
    "Exotic.Watcher.Glove.Exotic", "Exotic.Watcher_Sky.Karambit.Exotic", "Exotic._9D_Black.Wakizashi.Exotic", "Exotic.RGB.Watcher.Glove.Exotic", 
    "Exotic.RGB.Starry.Wakizashi.Exotic", "Exotic.Starry.ButterflyKnife.Exotic", "Exotic.Starfade.ButterflyKnife.Exotic", "Exotic.Starlight.ButterflyKnife.Exotic", 
    "Exotic.RGB.Starry.ButterflyKnife.Exotic", "Exotic.Starry.Wakizashi.Exotic", "Exotic.Starveil.Axe.Exotic", "Exotic.Starry.Bayonet_M9.Exotic", 
    "Exotic.RGB.Nya.Wakizashi.Exotic", "Exotic.Starfade.Bayonet_M9.Exotic", "Exotic.RGB.Nya.Glove.Exotic", "Exotic.RGB.NightHunt.CrookSword.Exotic", 
    "Exotic.NightHunt.CrookSword.Exotic", "Exotic.Starveil.Karambit.Exotic", "Exotic.NightHunt_Color2.CrookSword.Exotic", "Exotic.NightHunt_Color2.Glove.Exotic", 
    "Exotic.Starveil.ButterflyKnife.Exotic", "Exotic.Starveil.Bayonet_M9.Exotic", "Exotic.Starry.Axe.Exotic", "Exotic.Starember.ButterflyKnife.Exotic", 
    "Exotic.Starember.Glove.Exotic", "Exotic.NeonCore_Purple.Wakizashi.Exotic", "Exotic.RGB.TT_S2.Glove.Exotic", "Exotic.StarLordGray.Glove.Exotic", 
    "Exotic.StarLordBlue.Glove.Exotic", "Exotic.StarLordRed.Glove.Exotic", "Exotic.RGB.StarLord.Glove.Exotic", "Exotic.RGB.FlipKnife.Exotic", 
    "Exotic.RGB.Starry.Kukri.Exotic", "Exotic.Starember.Kukri.Exotic", "Exotic.RGB.NeonCore.Wakizashi.Exotic", "Exotic.S5.RedSeraph.Karambit.Exotic", 
    "Exotic.S5.WildFiend.Karambit.Exotic", "Exotic.TT_S2.Glove_Theme3.Exotic", "Exotic.StarLordBlue.Skeleton.Exotic", "Exotic.StarLordRed.Skeleton.Exotic", 
    "Exotic.StarLordGray.Skeleton.Exotic", "Exotic.RGB.StarLord.Skeleton.Exotic", "Exotic.Starlight.Kukri.Exotic", "Exotic.Starveil.Kukri.Exotic", 
    "Exotic.Starry.Kukri.Exotic", "Exotic.TT_S2.Glove_Theme2.Exotic", "Exotic.TT_S2.Glove.Exotic", "Exotic.TT_S2.Glove_Theme1.Exotic", 
    "Exotic.RGB.S5.VioletFiend.Karambit.Exotic", "Exotic.Starfade.Kukri.Exotic", "Exotic.RGB.Starry.CordKnife.Exotic", "Exotic.Starveil.CordKnife.Exotic", 
    "Exotic.Starry.CordKnife.Exotic", "Exotic.Starfade.CordKnife.Exotic", "Exotic.Starember.CordKnife.Exotic", "Exotic.S5.VioletFiend.Karambit.Exotic", 
    "Exotic.TT_S2.PrismTwins_Theme3.Exotic", "Exotic.TT_S2.PrismTwins_Theme2.Exotic", "Exotic.TT_S2.PrismTwins_Theme1.Exotic", "Exotic.TT_S2.PrismTwins.Exotic", 
    "Exotic.RGB.TT_S2.PrismTwins.Exotic", "Exotic.TT_S2.Glove_Cyan.Exotic", "Exotic.TT_S2.PrismTwins_Cyan.Exotic", "Exotic.TT_S2.Glove_Pink.Exotic", 
    "Exotic.TT_S2.PrismTwins_Pink.Exotic", "Exotic.RGB.Starry.Axe.Exotic", "Exotic.RGB.Starry.Bayonet_M9.Exotic", "Exotic.Starember.Axe.Exotic", 
    "Exotic.Starember.Bayonet_M9.Exotic", "Exotic.Starfade.Axe.Exotic", "Exotic.Starlight.Bayonet_M9.Exotic", "Exotic.Starfade.Karambit.Exotic", 
    "Exotic.Starlight.Axe.Exotic", "Exotic.Starlight.CordKnife.Exotic", "Exotic._Hand.Exotic", "Exotic.Nya.Karambit.Exotic", 
    "Exotic.NeonCore_Purple.ButterflyKnife.Exotic", "Exotic.NeonCore_Holo.ButterflyKnife.Exotic", "Exotic.RGB.Nya.Karambit.Exotic", 
    "Exotic.NeonCore_Cyan.ButterflyKnife.Exotic", "Exotic.Nya_Black.Karambit.Exotic", "Exotic.RGB.NeonCore.ButterflyKnife.Exotic", 
    "Exotic.NeonCore_Cyan.Wakizashi.Exotic", "Exotic.NeonCore_Holo.Wakizashi.Exotic", "Exotic.Apocalypse.Chainsaw.Exotic", 
    "Exotic.Apocalypse_Cyan.Chainsaw.Exotic", "Exotic.RGB.Apocalypse.Chainsaw.Exotic", "Exotic.RGB.Nya.ButterflyKnife.Exotic", 
    "Exotic.Nya.ButterflyKnife.Exotic", "Exotic.Nya_Black.ButterflyKnife.Exotic", "Exotic.Apocalypse.Glove.Exotic", "Exotic.Apocalypse_Cyan.Glove.Exotic", 
    "Exotic.RGB.Apocalypse.Glove.Exotic", "Exotic.MilkyWay1.OutDoorKnife", "Exotic.Zebra1.OutDoorKnife", "Exotic.Aluminum_Red.OutDoorKnife", 
    "Exotic.BlackLava.OutDoorKnife", "Exotic.CarbonFiber.OutDoorKnife", "Exotic.ColorBlue.OutDoorKnife", "Exotic.ColorGreen.OutDoorKnife", 
    "Exotic.Wood.OutDoorKnife", "Exotic.Copper_Leaf.OutDoorKnife", "Exotic.ForumViolet_CaliforniaGold1.OutDoorKnife", "Exotic.Graffiti1.OutDoorKnife", 
    "Exotic.Marble_Violet.OutDoorKnife", "Exotic.Rock_Ice.OutDoorKnife", "Exotic.MilkyWay3.OutDoorKnife", "Exotic.Rock_Opal.OutDoorKnife", 
    "Exotic.Sliver_Leaf_Black.OutDoorKnife", "Exotic.Strike_UrbanMasked.OutDoorKnife", "Exotic.Strike_BlueSteel.OutDoorKnife", 
    "Exotic.Strike_BorealForest.OutDoorKnife", "Exotic.Strike_BrightWater.OutDoorKnife", "Exotic.Strike_CrimsomWeb.OutDoorKnife", 
    "Exotic.Strike_DamascusSteel.OutDoorKnife", "Exotic.Strike_Doppler_Red.OutDoorKnife", "Exotic.Strike_Doppler_Blue.OutDoorKnife", 
    "Exotic.Strike_Fade.OutDoorKnife", "Exotic.Strike_ForestDDPAT.OutDoorKnife", "Exotic.Strike_Freehand.OutDoorKnife", 
    "Exotic.Strike_GammaDoppler_Cyan.OutDoorKnife", "Exotic.Strike_GammaDoppler_Green.OutDoorKnife", "Exotic.Strike_CaseHardened.OutDoorKnife", 
    "Exotic.Strike_MarbleFade.OutDoorKnife", "Exotic.Strike_NightStripe.OutDoorKnife", "Exotic.Strike_RustCoat.OutDoorKnife", 
    "Exotic.Strike_SafariMesh.OutDoorKnife", "Exotic.Strike_Scorched.OutDoorKnife", "Exotic.Strike_Slaughter.OutDoorKnife", "Exotic.Strike_Stained.OutDoorKnife", 
    "Exotic.Strike_TigerTooth.OutDoorKnife", "Exotic.Strike_Ultraviolet.OutDoorKnife", "Exotic.Base.OutDoorKnife", "Exotic.Strike_GoldenTemper.OutDoorKnife", 
    "Exotic.Strike_GammaDoppler_Pink.OutDoorKnife", "Exotic.Flower_Viola.OutDoorKnife"
}

-- ==============================================================================
-- PRIMARY WEAPON SECTION
-- ==============================================================================
Tab:CreateSection("Primary Weapon")

Tab:CreateDropdown({
   Name = "Equipped Primary (Base)",
   Options = primaryBases,
   CurrentOption = {getgenv().VisualSpooferState.PrimaryBase},
   MultipleOptions = false,
   Callback = function(Options)
       getgenv().VisualSpooferState.PrimaryBase = Options[1]
   end,
})

Tab:CreateDropdown({
   Name = "Target Primary (Skin)",
   Options = primarySkins,
   CurrentOption = {getgenv().VisualSpooferState.PrimaryTarget},
   MultipleOptions = false,
   Callback = function(Options)
       getgenv().VisualSpooferState.PrimaryTarget = Options[1]
   end,
})

-- ==============================================================================
-- MELEE WEAPON SECTION
-- ==============================================================================
Tab:CreateSection("Melee Weapon")

Tab:CreateDropdown({
   Name = "Equipped Melee (Base)",
   Options = meleeBases,
   CurrentOption = {getgenv().VisualSpooferState.MeleeBase},
   MultipleOptions = false,
   Callback = function(Options)
       getgenv().VisualSpooferState.MeleeBase = Options[1]
   end,
})

Tab:CreateDropdown({
   Name = "Target Melee (Skin)",
   Options = meleeSkins,
   CurrentOption = {getgenv().VisualSpooferState.MeleeTarget},
   MultipleOptions = false,
   Callback = function(Options)
       getgenv().VisualSpooferState.MeleeTarget = Options[1]
   end,
})

-- ==============================================================================
-- EXECUTION LOGIC & HOOKS
-- ==============================================================================
Tab:CreateSection("Execution")

-- HEURISTIC FILTER: Determines if the OOP object belongs to the LocalPlayer
local function IsLocalWeapon(instance)
    if not instance then return false end
    
    -- 1. Check obvious Player/Character property references
    if instance.Player == LocalPlayer or instance.player == LocalPlayer then return true end
    if LocalPlayer.Character and (instance.Character == LocalPlayer.Character or instance.char == LocalPlayer.Character) then return true end
    
    -- 2. Check internal flags
    if instance.IsLocal == true or instance.isLocal == true or instance.IsFirstPerson == true then return true end
    
    -- 3. Check for the Camera (FirstPerson viewmodels are strictly bound to the camera)
    local cam = Workspace.CurrentCamera
    local mdl = instance.Model or instance.model or instance.Instance
    
    if typeof(mdl) == "Instance" then
        if mdl:IsDescendantOf(cam) then return true end
        if LocalPlayer.Character and mdl:IsDescendantOf(LocalPlayer.Character) then return true end
    end
    
    -- If we can't definitively prove it belongs to the local player, assume it's a teammate/enemy.
    return false
end

Tab:CreateButton({
   Name = "Initialize Dual-Channel Hooks (Run Once)",
   Callback = function()
        if getgenv().VisualSpooferState.IsHooked then
            Rayfield:Notify({Title = "Already Hooked!", Content = "Update dropdowns and reset character to apply changes!", Duration = 4})
            return
        end

        local weaponModule = ReplicatedStorage.Client.WeaponController:WaitForChild("Weapon")
        local targets = { weaponModule, weaponModule:FindFirstChild("Gun"), weaponModule:FindFirstChild("Melee") }

        local hooksApplied = 0
        local targetMethods = {"SetSkin", "_loadModel", "_setupModel", "LoadSkinedAssets"}

        for _, mod in ipairs(targets) do
            if mod then
                local success, cls = pcall(require, mod)
                if success and type(cls) == "table" then
                    for _, methodName in ipairs(targetMethods) do
                        if type(cls[methodName]) == "function" and not cls["_Hooked"..methodName] then
                            cls["_Hooked"..methodName] = true
                            local originalMethod = cls[methodName]
                            
                            cls[methodName] = function(self, arg1, ...)
                                -- Check if the engine is requesting a ThirdPerson model
                                local isThirdPerson = false
                                if self.ModelName and type(self.ModelName) == "string" and string.find(self.ModelName, "ThirdPerson") then
                                    isThirdPerson = true
                                end
                                
                                for _, arg in pairs({arg1, ...}) do
                                    if type(arg) == "string" and (string.find(arg, "ThirdPerson") or string.find(arg, "Carry")) then
                                        isThirdPerson = true
                                    end
                                end
                                
                                -- If it is ThirdPerson, immediately return normal rendering
                                if isThirdPerson then
                                    return originalMethod(self, arg1, ...)
                                end

                                -- If it gets here, it's Local/FirstPerson rendering! Apply the Spoof.
                                local state = getgenv().VisualSpooferState
                                
                                -- Intercept Argument String
                                if type(arg1) == "string" then
                                    if string.find(arg1, state.PrimaryBase) then
                                        return originalMethod(self, state.PrimaryTarget, ...)
                                    elseif string.find(arg1, state.MeleeBase) then
                                        return originalMethod(self, state.MeleeTarget, ...)
                                    end
                                end
                                
                                -- Intercept Object Properties
                                if self.Name then
                                    if string.find(self.Name, state.PrimaryBase) then
                                        self.Skin = state.PrimaryTarget
                                        self.Name = state.PrimaryTarget
                                    elseif string.find(self.Name, state.MeleeBase) then
                                        self.Skin = state.MeleeTarget
                                        self.Name = state.MeleeTarget
                                    end
                                end
                                
                                return originalMethod(self, arg1, ...)
                            end
                            hooksApplied = hooksApplied + 1
                        end
                    end
                end
            end
        end

        if hooksApplied > 0 then
            getgenv().VisualSpooferState.IsHooked = true
            Rayfield:Notify({Title = "Engine Hijacked!", Content = "Hooks active. Only YOUR weapons are spoofed!", Duration = 6})
        else
            Rayfield:Notify({Title = "Failed", Content = "Could not hook initialization classes.", Duration = 5})
        end
   end,
})

Rayfield:Init()
}
