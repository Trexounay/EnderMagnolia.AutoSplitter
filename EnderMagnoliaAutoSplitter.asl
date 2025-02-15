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
	}
	
	settings.Add("split_key", false, "Keys", "config_split");
	settings.SetToolTip("split_key", "Split when grabbing a key");
	foreach (KeyValuePair<string, string> kvp in vars.keys)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_key");
	}
	
	settings.Add("split_aptitude", false, "Abilities", "config_split");
	settings.SetToolTip("split_aptitude", "Split when grabbing an ability");
	foreach (KeyValuePair<string, string> kvp in vars.aptitudes)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_aptitude");
	}
	
	settings.Add("split_quest", false, "Quest Items", "config_split");
	settings.SetToolTip("split_quest", "Split when grabbing a quest item");
	foreach (KeyValuePair<string, string> kvp in vars.quests)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_quest");
	}
	
	settings.Add("split_spirit", false, "Homunculi", "config_split");
	settings.SetToolTip("split_spirit", "Split when grabbing an Homunculi");
	foreach (KeyValuePair<string, string> kvp in vars.spirits)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_spirit");
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

	//var toto = 0x0000040A;
	//print(vars.GetName(toto));
	
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
	var CheckInventorySplit = new Func<IntPtr, bool>((IntPtr ptr) =>
	{
		int count = new DeepPointer(ptr + 0x60).Deref<int>(game);
		for (int i = 0; i < count; ++i)	
		{
			int item = new DeepPointer(ptr + 0x58, i * 0x14).Deref<int>(game);
			string str = vars.GetName(item).ToLower();
		if (!settings.ContainsKey(str) || !settings[str]  || vars.splitsDone.Contains(str))
				continue;
			vars.splitsDone.Add(str);
			print("SPLIT " + str);
			return true;
		}
		return false;
	});
	
	vars.ready = vars.ready || (current.LevelName != null && current.timeSinceStartup > 1 &&
		!CheckInventorySplit((IntPtr)current.KeyInventory) &&
		!CheckInventorySplit((IntPtr)current.QuestInventory) &&
		!CheckInventorySplit((IntPtr)current.SpiritInventory) &&
		!CheckInventorySplit((IntPtr)current.AptitudeInventory));

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

	
	if (CheckInventorySplit((IntPtr)current.KeyInventory))
		return true;
	if (CheckInventorySplit((IntPtr)current.SpiritInventory))
		return true;
	if (CheckInventorySplit((IntPtr)current.QuestInventory))
		return true;
	if (CheckInventorySplit((IntPtr)current.AptitudeInventory))
		return true;
	return false;
}


shutdown
{
}
