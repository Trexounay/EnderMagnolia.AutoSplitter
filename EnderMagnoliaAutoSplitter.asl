/*
** ENDER MAGNOLIA: Bloom in the Mist by Trex
** https://discord.gg/wWQUzB36dx
*/

state("EnderMagnoliaSteamEA-Win64-Shipping", "Steam Early Access, 0.5.0")
{
	//int GObjects : 0x7FF6DC9F77A0;
}
state("EnderMagnoliaSteamEA-Win64-Shipping", "Steam Early Access, 0.5.1")
{
	//int GObjects : 0x7FF6DC9F77A0;
	// GUObjectArray = 7FF6671C77F0  
	// FNamePool = 7FF667121440 
}
state("EnderMagnoliaSteam-Win64-Shipping", "Steam 1.0.2")
{
	//int GEngine : 0x7EEF600;
}
state("EnderMagnoliaSteam-Win64-Shipping", "Steam 1.0.3")
{
	// GEngine : 0x07EF2780
	long world: 0x07EF2780, 0xA80, 0x78;

	//int GEngine->GameViewport->World->PersistentLevel->LevelBuildDataId
	long LevelBuildDataId: 0x07EF2780, 0xA80, 0x78, 0x30, 0x210;
	
	//int GEngine->GameViewport->World->GameMode->ZoneSystemComponent->ActiveZoneLevelStreaming->Name
	int LevelName: 0x07EF2780, 0xA80, 0x78, 0x158, 0x4B0, 0xF8, 0x38;
	
	//int GEngine->GameViewport->World->GameMode->ZoneSystemComponent->ActiveZoneLevelStreaming->Name
	int PackageNameToLoad: 0x07EF2780, 0xA80, 0x78, 0x158, 0x4B0, 0xF8, 0x54;
	
	//int GEngine->GameViewport->World->GameMode->ZoneSystemComponent->switchingZone
	bool switchingZone: 0x07EF2780, 0xA80, 0x78, 0x158, 0x4B0, 0x101;
	
	// GEngine->GameInstance->SybSystems->WorldLoader->IsLoading
	bool isLoading: 0x07EF2780, 0x10A8, 0x108, 0x128, 0xA8;

	// GEngine->GameInstance->SybSystems->Save->SaveBackupNumber
	int SaveBackup: 0x07EF2780, 0x10A8, 0x108, 0x50, 0x7C;
	
	int RespawnRestPointID: 0x07EF2780, 0x10A8, 0x38, 0, 0x30, 0x9D8;
	
	double timeSinceStartup: 0x07EF2780, 0xA80, 0x78, 0x6C0;
}
state("EnderMagnoliaSteam-Win64-Shipping", "Steam 1.0.4")
{
	// GEngine : 07EF4980
	// GEngine->GameViewport->World
	long world: 0x07EF4980, 0xA80, 0x78;

	// GEngine->GameViewport->World->PersistentLevel->LevelBuildDataId
	long LevelBuildDataId: 0x07EF4980, 0xA80, 0x78, 0x30, 0x210;
	
	// GEngine->GameViewport->World->GameMode->ZoneSystemComponent->ActiveZoneLevelStreaming->Name
	int LevelName: 0x07EF4980, 0xA80, 0x78, 0x158, 0x4B0, 0xF8, 0x38;
	
	// GEngine->GameViewport->World->GameMode->ZoneSystemComponent->ActiveZoneLevelStreaming->Name
	int PackageNameToLoad: 0x07EF4980, 0xA80, 0x78, 0x158, 0x4B0, 0xF8, 0x54;
	
	// GEngine->GameViewport->World->GameMode->ZoneSystemComponent->switchingZone
	bool switchingZone: 0x07EF4980, 0xA80, 0x78, 0x158, 0x4B0, 0x101;
	
	// GEngine->GameInstance->LocalPlayer->0->PlayerController->PlayerCameraManager->ViewTargetActor->EnemyPawnTargets->Count
	int EnemyTargetsCount: 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x348, 0x320, 0xA40;

	// GEngine->GameInstance->LocalPlayer->0->PlayerController->PlayerCameraManager->ViewTargetActor->EnemyPawnTargets->0
	int EnemyTargetObjectIndex: 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x348, 0x320, 0xA38, 0x0;
	
	// GEngine->GameInstance->SybSystems->WorldLoader->IsLoading
	bool isLoading: 0x07EF4980, 0x10A8, 0x108, 0x128, 0xA8;

	// GEngine->GameInstance->SybSystems->Save->SaveBackupNumber
	int SaveBackup: 0x07EF4980, 0x10A8, 0x108, 0x50, 0x7C;
	
	int RespawnRestPointID: 0x07EF4980, 0x10A8, 0x38, 0, 0x30, 0x9D8;
	
	double timeSinceStartup: 0x07EF4980, 0xA80, 0x78, 0x6C0;
	
	
	// GEngine->GameInstance->LocalPlayer->0->PlayerController->InventoryComponent
	long AptitudeInventory: 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x178;
	long KeyInventory: 		0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1C8;
	long QuestInventory: 	0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1D0;
	long SpiritInventory: 	0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x180;
	long EquipmentInventory: 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x190;
	long PassiveInventory: 	 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1A8;
	long AssistInventory: 	 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x0198;
}

startup
{
	// LevelBuildDataId
	vars.InGameLevelID = 0x4D8E43C149362583;
	vars.TitleLevelID  = 0x4706DC27818385BD;
	
	// locals
	vars.lastLevel = 0x0;

	vars.aptitudes = new Dictionary<string, string> {
		//{ "crouch",	   					"Healing Ward"},
		//{ "dodge",						"Aerial Jump"},
		//{ "dodge_weak",					"Fast Travel"},
		//{ "jump",	    					"Garm's Iron Stake"},
		//{ "dash",	    					"Hati's Charge"},
		{ "heal",	    					"Healing Ward"},
		{ "double_jump",					"Aerial Jump"},
		{ "fast_travel",					"Fast Travel"},
		{ "pile_attack",	    			"Garm's Iron Stake"},
		{ "dash_charge",	    			"Hati's Charge"},
		{ "wall_grab",	    				"Lar's Grip"},
		{ "dive",	    					"Dive"},
		{ "hook",	    					"Motley's Magic Strands"},
		{ "sp",	    						"Attuner Arts"},
		{ "dash_charge_underwater",			"Motley's Torrent"},
		{ "high_jump",						"Garm's Ascent"},
		{ "wall_charge",					"Lar's Swift Flight"},
	};

	vars.keys = new Dictionary<string, string> {
		{ "key_ruins_tuto",					"Subterranean Testing Site Key"},
		{ "key_lower",	    				"Lower Stratum Key"},
		{ "key_higher_a",	    			"Frost Lord's Mark"},
		{ "key_owner",	    				"Grand Sorcerer's Key"},
		{ "key_higher_b",	    			"Milius Lord's Mark"},
	};

	vars.quests = new Dictionary<string, string> {
		{ "quest_artifact",					"Mutated Mineral"},
		{ "quest_stone",	    			"Frost Vestige"},
		{ "quest_bird",	    				"Avian Remains"},
		{ "quest_perfume",	    			"Black Perfume"},
		{ "quest_eye",	    				"Blighted Pupil"},
		{ "quest_lithograph",	    		"Stele of the Land of Origin"},
		{ "quest_board",	    			"Milius Resident Records"},
		{ "quest_amulet",	    			"Faintly Glowing Aegis Curio"},
	};

	vars.spirits = new Dictionary<string, string> {
		{ "s5000_reaper",				"Nola"},
		{ "s5010_lancer",	    		"Reibolg"},
		{ "s5110_gunman",	    		"Yolvan"},
		{ "s5070_witch",	    		"Luiseach"},
		{ "s5030_rogue",	    		"Lito"},
		{ "s5050_ronin",	    		"No.7"},
		{ "s5060_beast",	    		"Shackled Beast"},
		{ "s5040_maiden",	    		"Lorna"},
		{ "s5090_owl",	    			"Muninn"},
		{ "s5080_hawk",	    			"Huginn"},
	};

// bracelets
	vars.equipments_1 = new Dictionary<string, string> {
		{"armor_021",			"Celestial Bangle"},
		{"armor_020",			"Ancient's Fury"},
		{"armor_019",			"Upper Stratum Bangle"},
		{"armor_018",			"Aster Bangle"},
		{"armor_017",			"Sol Bangle"},
		{"armor_016",			"Lunar Bangle"},
		{"armor_015",			"Declan's Binds"},
		{"armor_014",			"Abelia's Bracelet"},
		{"armor_013",			"Spire Bangle"},
		{"armor_012",			"Yggdrasil Bangle"},
		{"armor_011",			"Central Stratum Bangle"},
		{"armor_010",			"Beast Bangle"},
		{"armor_009",			"Flower Bangle"},
		{"armor_008",			"Crimson Bangle"},
		{"armor_007",			"Chloe's Bracelet"},
		{"armor_006",			"Dagger Bangle"},
		{"armor_005",			"Bone Bangle"},
		{"armor_004",			"Stone Bangle"},
		{"armor_003",			"Thistle Bangle"},
		{"armor_002",			"Crude Bangle"},
		{"armor_001",			"Worn Bangle"},
	};

// carapaces
	vars.equipments_2 = new Dictionary<string, string> {
		{"shield_009",			"Luiseach's Carapace"},
		{"shield_008",			"Primordial Heirloom"},
		{"shield_007",			"Blessed Carapace"},
		{"shield_006",			"High Enhancer"},
		{"shield_005",			"Impact Carapace"},
		{"shield_004",			"Pyroflective Carapace"},
		{"shield_003",			"Reflective Carapace"},
		{"shield_002",			"Enhancer"},
		{"shield_001",			"Protective Carapace"},
	};

// totems
	vars.assists = new Dictionary<string, string> {
		{"assist_012",			"Cetus"},
		{"assist_011",			"Ilion"},
		{"assist_010",			"Typhon"},
		{"assist_009",			"Chiron"},
		{"assist_008",			"Ares"},
		{"assist_007",			"Lyra"},
		{"assist_006",			"Spica"},
		{"assist_005",			"Regulus"},
		{"assist_004",			"Carcinus"},
		{"assist_003",			"Gemini"},
		{"assist_002",			"Taurus"},
		{"assist_001",			"Krios"},
	};

// relics
	vars.passives = new Dictionary<string, string> {
		{"damage_up_grounded",				"Chain Belt"},
		{"damage_up_airborne",				"Sanguinary Raven"},
		{"damage_up_swimming",				"Attuner's Pendant"},
		{"damage_up_skillcategory_combo",	"Echo Device"},
		{"damage_up_skillcategory_repeat",	"Pure Floral Necklace"},
		{"damage_up_skillcategory_defence",	"Arena Tower Demon Mask"},
		{"damage_up_skillcategory_auto",	"House Milius Earrings"},
		{"damage_up_skillcategory_special",	"Cracked Magicite Dagger"},
		{"damage_up_maxhp",					"Magic Strand Charm"},
		{"damage_up_minhp",					"Jagged Crystal"},
		{"damage_up_sp_gauge",				"Priestess' Tears"},
		{"damage_up_debuffed",				"Battered Grimoire"},
		{"damage_up_targetdebuffed",		"Vivid Claws"},
		{"damage_up_targetstunned",			"Cleaner's Tag"},
		{"reduce_skill_cooldown",			"Eye of the Ancients"},
		{"stamina_damage_up_a",				"Blighted Talisman"},
		{"stamina_damage_up_b",				"Mysterious Glowing Can"},
		{"debuff_damage_up_a",				"Survey Team Gauntlet"},
		{"debuff_damage_up_b", 				"Sorcerer's Gauntlet"},
		{"restore_sp_up_a", 				"Chief Attuner's Ring"},
		{"restore_sp_up_b", 				"Nameless Priestess' Ring"},
		{"onattack_restorehp", 				"Declan's Ring"},
		{"onattack_restorehp_damage", 		"Cain's Ring"},
		{"onattack_instantkill", 			"Abelia's Ring"},
		{"onkill_restorehp", 				"Helix Crystal"},
		{"onkill_restoresp", 				"Attuner's Earrings"},
		{"onkill_reduce_cooldowns", 		"Magicite Hairpin"},
		{"onkill_drops", 					"Headless Gold Statue"},
		{"damage_cut_physic", 				"Tarnished Tag"},
		{"damage_cut_debuff_down", 			"Laborer's Tag"},
		{"damage_cut_debuffed", 			"Bloodstained Stuffed Toy"},
		{"damage_cut_maxhp", 				"Beast Horn Ornament"},
		{"damage_cut_minhp", 				"Effigy"},
		{"damage_cut_sp_gauge", 			"Crystallized Fusion"},
		{"experience_up", 					"Blighted Dice"},
		{"gold_up", 						"Eye of the Beast"},
		{"junk_up", 						"Eye of the Homunculus"},
		{"higher_mobility", 				"Leg Enhancement Gear"},
		{"debuff_cut_burn", 				"Crimson Ribbon"},
		{"dodge_long", 						"Evasive Fragrance"},
		{"exploration_charge_short", 		"Enhancement Gear"},
		{"heal_short", 						"Ward Propagator"},
		{"reduce_gravity", 					"Incomplete Gear"},
		{"ending_flag", 					"Lilia's Blighted Ring"},
	};
	
	vars.bosses = new Dictionary<string, string> {
		{ "BP_e5030_Rogue_C",						"Lito, the Child Test Subject"},
		{ "BP_e5110_Gunman_C",	    				"Yolvan, the Black-Winged Huntsman"},
		{ "BP_e6040_Darker_C",	    				"Caladrius"},
		{ "BP_e0030_Guard_C",						"Old Upper Stratum Guard"},
		{ "BP_e0122_Wheeler_C",						"Squad Leader, Mining Unit 1"},
		{ "BP_e5200_Pounder_C",						"Garm, the Giant Gravedigger"},
		{ "BP_e0162_Gang_C",						"Steeple Executioner"},
		{ "BP_e5060_Beast_C",						"Shackled Beast"},
		{ "BP_e6000_Rider_C", 						"Veol, the Crazed Wolf"},
		{ "BP_e0203_Scarab_C",						"Roller: Giant Orb"},
		{ "BP_e6010_Cluster_Mode1_C", 				"King of the Garbage Heap P1"},
		{ "BP_e6010_Cluster_Mode3_C", 				"King of the Garbage Heap"},
		{ "BP_e5230_Finder_C_Quarry_001_Zone_008",	"Lars, the Lurker of the Depths 1"},
		{ "BP_e5230_Finder_C_Quarry_001_Zone_019",	"Lars, the Lurker of the Depths 2"},
		{ "BP_e5230_Finder_002_C",					"Lars, the Lurker of the Depths 3"},
		{ "BP_e6050_Master_C", 						"Gilroy, the Administrator"},
		{ "BP_e0252_Ninja_C", 						"Combat Puppet: No. 20"},
		{ "BP_e0253_Ninja_C", 						"Combat Puppet: No. 14"},
		{ "BP_e0262_Komuso_C", 						"Combat Puppet: No. 56"},
		{ "BP_e5050_Ronin_C", 						"Combat Puppet: No. 7"},
		{ "BP_e0281_banshee_C", 					"Marionette: No. 47"},
		{ "BP_e0233_Researcher_C", 					"Professor Eliza"},
		{ "BP_e6030_Owner_C", 						"Declan, the Fallen Sorcerer"},
		{ "BP_e2030_Sector_C",   					"Velnest"},
		{ "BP_e6020_Director_C", 					"Velgrynd"},
		{ "BP_e6051_Master_C", 						"Gilroy, the Administrator (Armed Form)"},
		{ "BP_e5003_Reaper_C",						"Aggressor"},
		{ "BP_e5070_Witch_C",						"Luiseach, the Iron Witch"},
//		{ "BP_e0500_Tentacle_C",					"Rooted Primordial Beast"},
		{ "BP_e5010_Lancer_C",						"Mad Knight Reibolg 1"},
		{ "BP_e5012_Lancer_C",						"Mad Knight Reibolg 2"},
//		{ "BP_e0510_Ray_C",							"Soaring Beast of Origin"},
		{ "BP_e0222_Security_C",    				"Velius - Captain of the Guard"},
		{ "BP_e6052_Master_C", 						"Gilroy, the Administrator (Absolute Form)"},
		{ "BP_e6053_Master_C", 						"Gilroy, the Administrator (Absolute Form) B"},
	};

	vars.bossesDefaultOff = new HashSet<string> {
		"BP_e6010_Cluster_Mode1_C",
		"BP_e5110_Gunman_C",
		"BP_e0252_Ninja_C",
		"BP_e0253_Ninja_C",
		"BP_e0262_Komuso_C",
		"BP_e6052_Master_C",
		"BP_e6053_Master_C",
	};

	// SETTINGS
	settings.Add("load_remover", true, "Load Remover");
	settings.SetToolTip("load_remover", "Pause timer during game loadings, only affects Game Time");

	settings.Add("config_split", true, "Splits Configuration");
	settings.Add("split_ending", true, "Game Endings", "config_split");
	settings.SetToolTip("split_ending", "Split when reaching Ending A or B");

	settings.Add("split_boss", true, "Boss Kill", "config_split");
	settings.SetToolTip("split_boss", "Split when killing Bosses");
	foreach (KeyValuePair<string, string> kvp in vars.bosses)
	{
		settings.Add(kvp.Key, !vars.bossesDefaultOff.Contains(kvp.Key), kvp.Value, "split_boss");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}
	
	settings.Add("split_key", false, "Keys", "config_split");
	settings.SetToolTip("split_key", "Split when grabbing a key");
	foreach (KeyValuePair<string, string> kvp in vars.keys)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_key");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}
	
	settings.Add("split_aptitude", false, "Abilities", "config_split");
	settings.SetToolTip("split_aptitude", "Split when grabbing an ability");
	foreach (KeyValuePair<string, string> kvp in vars.aptitudes)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_aptitude");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}
	
	settings.Add("split_quest", false, "Quest Items", "config_split");
	settings.SetToolTip("split_quest", "Split when grabbing a quest item");
	foreach (KeyValuePair<string, string> kvp in vars.quests)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_quest");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}
	
	settings.Add("split_spirit", false, "Homunculi", "config_split");
	settings.SetToolTip("split_spirit", "Split when grabbing an Homunculi");
	foreach (KeyValuePair<string, string> kvp in vars.spirits)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_spirit");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}
	
	settings.Add("split_equipment_1", false, "Bracelets", "config_split");
	settings.SetToolTip("split_equipment_1", "Split when grabbing a bracelet");
	foreach (KeyValuePair<string, string> kvp in vars.equipments_1)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_equipment_1");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}

	settings.Add("split_equipment_2", false, "Carapaces", "config_split");
	settings.SetToolTip("split_equipment_2", "Split when grabbing a carapace");
	foreach (KeyValuePair<string, string> kvp in vars.equipments_2)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_equipment_2");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}

	settings.Add("split_assist", false, "Totems", "config_split");
	settings.SetToolTip("split_assist", "Split when grabbing a totem");
	foreach (KeyValuePair<string, string> kvp in vars.assists)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_assist");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}

	settings.Add("split_passive", false, "Relics", "config_split");
	settings.SetToolTip("split_passive", "Split when grabbing a relic");
	foreach (KeyValuePair<string, string> kvp in vars.passives)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_passive");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}
}

init
{
	byte[] exeMD5HashBytes = new byte[0];
	using (var md5 = System.Security.Cryptography.MD5.Create())
	{
		using (var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
		{
			exeMD5HashBytes = md5.ComputeHash(s);
		}
	}
	var MD5Hash = exeMD5HashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
	vars.GetName = new Func<int, string>((int comparison) => 
	{
		int block = comparison >> 16;
		int offset = comparison & 0xFFFF;
		DeepPointer header = new DeepPointer(vars.fNamePool + 0x10 + (0x8 * block));
		IntPtr ptr = header.Deref<IntPtr>(game) + (0x2 * offset);
		Int16 len = (Int16)(game.ReadValue<Int16>(ptr) >> 6);
		return game.ReadString(ptr + 0x2, len);
	});
	vars.GetObject = new Func<int, IntPtr>((int key) => 
	{
		int chunk = key / 0x10000;
		int index = key % 0x10000;

		IntPtr obj = new DeepPointer(vars.GUObjectArray + 0x10, 0x8 * chunk, index * 0x18).Deref<IntPtr>(game);
		return obj;
	});
	
	switch(MD5Hash)
	{
		case "E1B61EB5CE59F921CA9D3A671A197BFA": { 
			vars.fNamePool = 0x07CC14C0;
			vars.GUObjectArray = 0x07D78220;
			version = "Steam 1.0.4"; break;
		}
		case "4E99ACB034B5729EB3B94C43C184C6F0": { 
			vars.fNamePool = 0x07CBF2C0;
			version = "Steam 1.0.3"; break;
		}
		case "F8A689E17C2736A8BF2F0A5DF88C35FD": { version = "Steam 1.0.2"; break; }
		case "CEB55A8722FB508280E938D3CCBBD7F4": { version = "Steam Early Access, 0.5.0"; break; }
		case "D92A11D9596FA04062CDD99F1C80CB49": { version = "Steam Early Access, 0.5.1"; break; }
		default:
		{
			var gameMessage = MessageBox.Show(
				"Unrecognized game version\n\n"+
				"Please report this error in ENDER: Serie Discord\n"+
				"with the following hash:\n\n"+MD5Hash+"\n\n"+
				"Press OK to copy the above info to the clipboard and close this message.",
				"Ender Magnolia Autosplitter | LiveSplit",
				MessageBoxButtons.OKCancel,MessageBoxIcon.Warning
			);
			if (gameMessage == DialogResult.OK)
				Clipboard.SetText(MD5Hash);
			version = "Unknown"; break;
		}
	}
	vars.splitsDone = new HashSet<string>();
	vars.ready = false;
}

start
{
	vars.splitsDone = new HashSet<string>();
	vars.ready = false;
	if (old.LevelBuildDataId != 0 && old.LevelBuildDataId != current.LevelBuildDataId)
	{
		vars.lastLevel = old.LevelBuildDataId;
	}
	bool start = vars.lastLevel == vars.TitleLevelID && current.LevelBuildDataId == vars.InGameLevelID && old.LevelBuildDataId != current.LevelBuildDataId;
	return start;
}

update
{
	if (version == "Unknown" || version == "")
		return false;

	//var toto = 0x1DE254;
	//print(vars.GetName(toto));
/*
	var CheckDataInventory = new Func<IntPtr, bool>((IntPtr ptr) =>
	{
		int count = new DeepPointer(ptr + 0xF8, 0x38).Deref<int>(game);
		print(count.ToString());
		var str = "";
		for (int i = 0; i < count; ++i)	
		{
			int item = new DeepPointer(ptr + 0xF8, 0x30, i * 0x18).Deref<int>(game);
			str += vars.GetName(item).ToLower() + ";";
		}
		print(str);
		return false;
});*/
	//CheckDataInventory((IntPtr)current.AssistInventory);
	 
	if (old.LevelBuildDataId != 0 && old.LevelBuildDataId != current.LevelBuildDataId)
	{
		vars.lastLevel = old.LevelBuildDataId;
	}
	return true;
}


isLoading
{
	return settings["load_remover"] && (current.isLoading || current.switchingZone);
}


reset
{
	return current.LevelBuildDataId == vars.TitleLevelID && old.LevelBuildDataId != current.LevelBuildDataId;
} 

split
{
	var CheckInventorySplit = new Func<bool>(() =>
	{
		var items = new IntPtr[] {(IntPtr)current.AptitudeInventory,
					 (IntPtr)current.KeyInventory,
					 (IntPtr)current.QuestInventory,
					 (IntPtr)current.SpiritInventory,
					 (IntPtr)current.EquipmentInventory,
					 (IntPtr)current.PassiveInventory,
					 (IntPtr)current.AssistInventory,
					};
		bool split = false;
		foreach (var ptr in items)
		{
			int count = new DeepPointer(ptr + 0x60).Deref<int>(game);
			for (int i = 0; i < count; ++i)	
			{
				int item = new DeepPointer(ptr + 0x58, i * 0x14).Deref<int>(game);
				string str = vars.GetName(item).ToLower();
				if (!settings.ContainsKey(str) || !settings[str]  || vars.splitsDone.Contains(str))
					continue;
				vars.splitsDone.Add(str);
				//print("SPLIT" + str);
				split = true;
				if (vars.ready)
					return true;
			}
		}
		return split;
	});

	vars.ready = vars.ready || (current.LevelName != null && current.timeSinceStartup > 1 && !CheckInventorySplit());

	if (!vars.ready)
		return false;
	if (settings["split_ending"] &&  old.SaveBackup != current.SaveBackup &&
		current.LevelName > 0 && vars.GetName(current.LevelName) == "Summit_001_Zone_030")
		return true;

	var CheckBossSplit = new Func<int, bool>((int weakPTR) =>
	{
		IntPtr obj = vars.GetObject(weakPTR);
		int name = new DeepPointer(obj + 0x18).Deref<int>(game);
		string str = vars.GetName(name);

		if (!vars.bosses.ContainsKey(str))
			str += "_" + vars.GetName(current.LevelName);
		if (!vars.bosses.ContainsKey(str) || !settings[str] || vars.splitsDone.Contains(str))
			return false;
		
		// obj->HPComponent->Current
		//int hp = new DeepPointer(obj + 0x8B8, 0x13C).Deref<int>(game);
		
		// obj->DeathComponent->IsDead
		bool isDead = new DeepPointer(obj + 0x8D8, 0x3B).Deref<bool>(game);
		current.dead = isDead;
		
		//print("boss:" + str +  "hp :" + hp.ToString() +  " dead " +  isDead.ToString() + " ptr " + obj.ToString() +  " -> " + current.EnemyTargetsCount.ToString());
		if (current.dead && !old.dead)
		{
			vars.splitsDone.Add(str);
			return true;
		}
		return false;
	});
	
	if (current.EnemyTargetsCount > 0 && CheckBossSplit(current.EnemyTargetObjectIndex))
		return true;

	
	if (CheckInventorySplit())
		return true;
	return false;
}


shutdown
{
}
