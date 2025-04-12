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
	
	
	// GEngine->GameInstance->LocalPlayer->0->PlayerController->InventoryComponent->xx
	long AptitudeInventory: 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x178;
	long KeyInventory: 		0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1C8;
	long QuestInventory: 	0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1D0;
	long SpiritInventory: 	0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x180;
	long EquipmentInventory: 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x190;
	long PassiveInventory: 	 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1A8;
	long AssistInventory: 	 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x0198;
	long MaterialInventory:  0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x01B0;
	long StatsInventory:  	 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x01A0;
	
	// GEngine->GameInstance->LocalPlayer->0->PlayerController->PlayerUI->WBP_Minimap->CurrentWidgetArea->CachedMapIcons
	long CachedIcons:	 	 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x9C8, 0x468, 0x4E0, 0x498;
	int CachedIconsCount:	 	 0x07EF4980, 0x10A8, 0x38, 0x0, 0x30, 0x9C8, 0x468, 0x4E0, 0x4A0;
}
state("EnderMagnoliaSteam-Win64-Shipping", "Steam 1.1.0")
{
	// GEngine : 0x80C5F00
	// GEngine->GameViewport->World
	long world: 0x80C5F00, 0xA80, 0x78;

	// GEngine->GameViewport->World->PersistentLevel->LevelBuildDataId
	long LevelBuildDataId: 0x80C5F00, 0xA80, 0x78, 0x30, 0x210;
	
	// GEngine->GameViewport->World->GameMode->ZoneSystemComponent->ActiveZoneLevelStreaming->Name
	int LevelName: 0x80C5F00, 0xA80, 0x78, 0x158, 0x4B0, 0xF8, 0x38;
	
	// GEngine->GameViewport->World->GameMode->ZoneSystemComponent->ActiveZoneLevelStreaming->Name
	int PackageNameToLoad: 0x80C5F00, 0xA80, 0x78, 0x158, 0x4B0, 0xF8, 0x54;
	
	// GEngine->GameViewport->World->GameMode->ZoneSystemComponent->switchingZone
	bool switchingZone: 0x80C5F00, 0xA80, 0x78, 0x158, 0x4B0, 0x101;
	
	// GEngine->GameInstance->LocalPlayer->0->PlayerController->PlayerCameraManager->ViewTargetActor->EnemyPawnTargets->Count
	int EnemyTargetsCount: 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x348, 0x320, 0xA40;

	// GEngine->GameInstance->LocalPlayer->0->PlayerController->PlayerCameraManager->ViewTargetActor->EnemyPawnTargets->0
	int EnemyTargetObjectIndex: 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x348, 0x320, 0xA38, 0x0;
	
	// GEngine->GameInstance->SybSystems->WorldLoader->IsLoading
	bool isLoading: 0x80C5F00, 0x10A8, 0x108, 0x128, 0xA8;

	// GEngine->GameInstance->SybSystems->Save->SaveBackupNumber
	int SaveBackup: 0x80C5F00, 0x10A8, 0x108, 0x50, 0x7C;
	
	int RespawnRestPointID: 0x80C5F00, 0x10A8, 0x38, 0, 0x30, 0x9D8;
	
	double timeSinceStartup: 0x80C5F00, 0xA80, 0x78, 0x6C0;
	
	
	// GEngine->GameInstance->LocalPlayer->0->PlayerController->InventoryComponent->xx
	long AptitudeInventory:  0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x178;
	long KeyInventory: 		 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1C8;
	long QuestInventory: 	 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1D0;
	long SpiritInventory: 	 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x180;
	long EquipmentInventory: 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x190;
	long PassiveInventory: 	 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1A8;
	long AssistInventory: 	 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x0198;
	long MaterialInventory:  0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x01B0;
	long StatsInventory:  	 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x01A0;
	
	// GEngine->GameInstance->LocalPlayer->0->PlayerController->PlayerUI->WBP_Minimap->CurrentWidgetArea->CachedMapIcons
	long CachedIcons:	 	 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x9C8, 0x468, 0x4E0, 0x498;
	int CachedIconsCount:	 0x80C5F00, 0x10A8, 0x38, 0x0, 0x30, 0x9C8, 0x468, 0x4E0, 0x4A0;
}
state("EnderMagnoliaSteam-Win64-Shipping", "Steam 1.1.1")
{
	// GEngine : 0x80C8F80
	// GEngine->GameViewport->World
	long world: 0x80C8F80, 0xA80, 0x78;

	// GEngine->GameViewport->World->PersistentLevel->LevelBuildDataId
	long LevelBuildDataId: 0x80C8F80, 0xA80, 0x78, 0x30, 0x210;
	
	// GEngine->GameViewport->World->GameMode->ZoneSystemComponent->ActiveZoneLevelStreaming->Name
	int LevelName: 0x80C8F80, 0xA80, 0x78, 0x158, 0x4B0, 0xF8, 0x38;
	
	// GEngine->GameViewport->World->GameMode->ZoneSystemComponent->ActiveZoneLevelStreaming->Name
	int PackageNameToLoad: 0x80C8F80, 0xA80, 0x78, 0x158, 0x4B0, 0xF8, 0x54;
	
	// GEngine->GameViewport->World->GameMode->ZoneSystemComponent->switchingZone
	bool switchingZone: 0x80C8F80, 0xA80, 0x78, 0x158, 0x4B0, 0x101;
	
	// GEngine->GameInstance->LocalPlayer->0->PlayerController->PlayerCameraManager->ViewTargetActor->EnemyPawnTargets->Count
	int EnemyTargetsCount: 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x348, 0x320, 0xA40;

	// GEngine->GameInstance->LocalPlayer->0->PlayerController->PlayerCameraManager->ViewTargetActor->EnemyPawnTargets->0
	int EnemyTargetObjectIndex: 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x348, 0x320, 0xA38, 0x0;
	
	// GEngine->GameInstance->SybSystems->WorldLoader->IsLoading
	bool isLoading: 0x80C8F80, 0x10A8, 0x108, 0x128, 0xA8;

	// GEngine->GameInstance->SybSystems->Save->SaveBackupNumber
	int SaveBackup: 0x80C8F80, 0x10A8, 0x108, 0x50, 0x7C;
	
	int RespawnRestPointID: 0x80C8F80, 0x10A8, 0x38, 0, 0x30, 0x9D8;
	
	double timeSinceStartup: 0x80C8F80, 0xA80, 0x78, 0x6C0;
	
	
	// GEngine->GameInstance->LocalPlayer->0->PlayerController->InventoryComponent->xx
	long AptitudeInventory:  0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x178;
	long KeyInventory: 		 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1C8;
	long QuestInventory: 	 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1D0;
	long SpiritInventory: 	 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x180;
	long EquipmentInventory: 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x190;
	long PassiveInventory: 	 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x1A8;
	long AssistInventory: 	 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x0198;
	long MaterialInventory:  0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x01B0;
	long StatsInventory:  	 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x978, 0x01A0;
	
	// GEngine->GameInstance->LocalPlayer->0->PlayerController->PlayerUI->WBP_Minimap->CurrentWidgetArea->CachedMapIcons
	long CachedIcons:	 	 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x9C8, 0x468, 0x4E0, 0x498;
	int CachedIconsCount:	 0x80C8F80, 0x10A8, 0x38, 0x0, 0x30, 0x9C8, 0x468, 0x4E0, 0x4A0;
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

// materials
	vars.materials = new Dictionary<string, string> {
		{"parts_lv2_b", "Experimental Amplifier"},
		{"parts_lv2_c", "Mixed Parts"},
		{"parts_lv3_b", "Obsolete Core"},
		{"parts_lv3_c", "Antiquated Parts"},
		{"parts_lv4_a", "New Model Core"},
		{"parts_lv4_b", "Magic Amplifier"},
		{"parts_lv4_c", "New Model Parts"},
		{"parts_lv5_a", "Special Alloy Core"},
		{"parts_lv5_b", "Special Alloy Amplifier"},
		{"parts_lv5_c", "Special Alloy Part"},
		{"parts_lv6_a", "Origin Gem Core"},
		{"parts_lv6_b", "Administrator's Amplifier"},
		{"parts_lv6_c", "Highest-grade Parts"},
		{"parts_s5000_a", "Unidentified Core"},
		{"parts_s5000_b", "Unidentified Amplifier"},
		{"parts_s5000_c", "Unidentified Transformer"},
	};
	
// grimoires 
	vars.grimoires = new Dictionary<string, string> {
		{"shop_line_up", "Grimoire"},
	};

	vars.obj_count = new Dictionary<string, int> {
		{"parts_lv2_b",   2},
		{"parts_lv2_c",   2},
		
		{"parts_lv3_b",   2},
		{"parts_lv3_c",   2},
		
		{"parts_lv4_a",   2},
		{"parts_lv4_b",   4},
		{"parts_lv4_c",   4},
		
		{"parts_lv5_a",   3},
		{"parts_lv5_b",   4},
		{"parts_lv5_c",   4},
		
		{"parts_lv6_a",   7},
		{"parts_lv6_b",   9},
		{"parts_lv6_c",   9},
		
		{"parts_s5000_a", 3},
		{"parts_s5000_b", 3},
		{"parts_s5000_c", 3},
		
		{"shop_line_up",  12},
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
	vars.bosses_rooms = new Dictionary<string, string> {
		{ "Ruins_001_Zone_012",						"Lito, the Child Test Subject"},
		{ "Street_001_Zone_004",	    			"Yolvan, the Black-Winged Huntsman"},
		{ "Street_001_Zone_017",					"Old Upper Stratum Guard"},
		{ "Mine_001_Zone_004",						"Squad Leader, Mining Unit 1"},
		{ "Mine_001_Zone_017",						"Garm, the Giant Gravedigger"},
		{ "Tower_001_Zone_010",						"Steeple Executioner"},
		{ "Tower_001_Zone_016",						"Shackled Beast"},
		{ "Forest_001_Zone_022", 					"Veol, the Crazed Wolf"},
		{ "Swamp_001_Zone_004",						"Roller: Giant Orb"},
		{ "Swamp_001_Zone_015", 					"King of the Garbage Heap"},
		{ "Quarry_001_Zone_008",					"Lars, the Lurker of the Depths 1"},
		{ "Quarry_001_Zone_019",					"Lars, the Lurker of the Depths 2"},
		{ "Quarry_001_Zone_022",					"Lars, the Lurker of the Depths 3"},
		{ "Center_001_Zone_001", 					"Gilroy, the Administrator"},
		{ "Kowloon_001_Zone_048", 					"Combat Puppet: No. 20"},
		{ "Kowloon_001_Zone_049", 					"Combat Puppet: No. 14"},
		{ "Kowloon_001_Zone_050", 					"Combat Puppet: No. 56"},
		{ "Kowloon_001_Zone_051", 					"Combat Puppet: No. 7"},
		{ "Paradise_001_Zone_008", 					"Marionette: No. 47"},
		{ "Garden_001_Zone_005", 					"Professor Eliza"},
		{ "Paradise_001_Zone_018", 					"Declan, the Fallen Sorcerer"},
		{ "Factory_001_Zone_010",   				"Velnest"},
		{ "Factory_001_Zone_017", 					"Velgrynd"},
		{ "Labo_001_Zone_020", 						"Gilroy, the Administrator (Armed Form)"},
		{ "Labo_001_Zone_003",						"Aggressor"},
		{ "Garden_001_Zone_011",					"Luiseach, the Iron Witch"},
		//{ "Quarry_001_Zone_031",					"Mad Knight Reibolg 1"},
		{ "Roots_001_Zone_001",						"Mad Knight Reibolg 2"},
		{ "Summit_001_Zone_021",    				"Velius - Captain of the Guard"},
		{ "Summit_001_Zone_030", 					"Gilroy, the Administrator (Absolute Form)"},
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
	
	vars.restpoints = new Dictionary<string, string> {
		//{"forest_bridge",		 "Crimson Forest Bridge"},
		//{"sys_init",			 "Place of Awakening"},
		//{"sys_post_event",	 "Place of the Forsaken"},

		{"ruins_first",			 "Subterranean Lab"},
		{"ruins_lab",			 "Test Subject Wing"},
		{"crossroad_camp",		 "Abandoned Attuner Tent"},
		{"slum_camp",			 "Private Quarters"},
		{"street_clocktower",	 "Clock Tower Plaza - Entrance"},
		{"street_towergate",	 "Tethered Steeple - Entrance"},
		{"mine_room1",			 "Broken Apparatus"},
		{"mine_room2",			 "Rest Area"},
		{"mine_room3",			 "Floral Cavern"},
		{"sewer_left",			 "Attuner's Respite"},
		{"tower_high",			 "Decaying Room"},
		{"tower_low",			 "Assembly Hall"},
		{"tower_gate",			 "Forest Barrier - Entrance"},
		{"forest_tree",			 "Great Tree of the Crimson Forest"},
		{"forest_village",		 "Crimson Forest Settlement"},
		{"swamp_lake",			 "Cleaner's Refuge"},
		{"swamp_center",		 "Discarded Bench"},
		{"swamp_trash",			 "Administrative Section"},
		{"quarry_room",			 "Fungal Refuge"},
		{"quarry_room2",		 "Central Room"},
		{"quarry_room3",		 "Unblighted Path"},
		{"kowlon_room4",		 "Steel District Bench"},
		{"kowlon_room",			 "Combat Puppet Quarters"},
		{"kowlon_room2",		 "Arena Tower"},
		{"kowloon_room3",		 "Before the Guiding Bridge"},
		{"paradice_room",		 "Sage's Study"},
		{"paradice_room2",		 "Underground Observatory"},
		{"paradice_room3",		 "The Lord's Chambers"},
		{"garden_room",			 "Main Academy Building Entrance"},
		{"garden_room2",		 "Central Plaza"},
		{"garden_room3",		 "Vacant Courtyard"},
		{"factory_room",		 "Runaway's Abode"},
		{"factory_room2",		 "Labor Regulation Center"},
		{"factory_room3",		 "Control Center"},
		{"labo_room",			 "Great Orb of Intellect"},
		{"labo_room2",			 "Rooftop"},
		{"labo_room3",			 "Forbidden Text Archive"},
		{"estate_room",		 	 "Dust-covered Sofa"},
		{"center_bench",		 "Central City Bench"},
		{"summit_lobby",		 "Empyrean Parasol Interior"},
		{"summit_last",			 "Before the Throne"},
		{"roots_top",			 "Path of Origin"},
		{"roots_left",			 "Ancient Resting Place"},
		{"roots_right",			 "Ritual Site"},
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

	settings.Add("split_boss_room", false, "Boss Rooms", "config_split");
	settings.SetToolTip("split_boss_room", "Split when entering a boss room");
	foreach (KeyValuePair<string, string> kvp in vars.bosses_rooms)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_boss_room");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}

	settings.Add("split_restpoint", false, "Respites", "config_split");
	settings.SetToolTip("split_restpoint", "Split when reaching a respite");
	foreach (KeyValuePair<string, string> kvp in vars.restpoints)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_restpoint");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}
	
	settings.Add("split_aptitude", false, "Abilities", "config_split");
	settings.SetToolTip("split_aptitude", "Split when grabbing an ability");
	foreach (KeyValuePair<string, string> kvp in vars.aptitudes)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_aptitude");
		settings.SetToolTip(kvp.Key, kvp.Key);
	}
	
	settings.Add("split_key", false, "Keys", "config_split");
	settings.SetToolTip("split_key", "Split when grabbing a key");
	foreach (KeyValuePair<string, string> kvp in vars.keys)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_key");
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

	settings.Add("split_material", false, "Components", "config_split");
	settings.SetToolTip("split_material", "Split when pickup up a component");
	foreach (KeyValuePair<string, string> kvp in vars.materials)
	{
		settings.Add(kvp.Key, true, kvp.Value, "split_material");
		settings.SetToolTip(kvp.Key, kvp.Key);
		for (int i = 1; i <= vars.obj_count[kvp.Key]; ++i)
		{
			var key = kvp.Key + "_" + i.ToString();
			var text = i.ToString() + "/"  + vars.obj_count[kvp.Key].ToString();
			settings.Add(key, true, text, kvp.Key);
		}
	}

	settings.Add("split_grimoire", false, "Grimoires", "config_split");
	settings.SetToolTip("split_grimoire", "Split when pickup up a grimoire");
	foreach (KeyValuePair<string, string> kvp in vars.grimoires)
	{
		for (int i = 1; i <= vars.obj_count[kvp.Key]; ++i)
		{
			settings.Add(kvp.Key + "_" + i.ToString(), true, i.ToString() + "/"  + vars.obj_count[kvp.Key].ToString(), "split_grimoire");
		}
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
		case "2D37E3BAAC225F78EEE1B1CBB17D227E": { 
			vars.fNamePool = 0x07E95AC0;
			vars.GUObjectArray = 0x07F4C820;
			version = "Steam 1.1.1"; break;
		}
		case "DC8AA145769EEE84068846F2B0446F3A": { 
			vars.fNamePool = 0x07E92A40;
			vars.GUObjectArray = 0x07F497A0;
			version = "Steam 1.1.0"; break;
		}
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
	vars.respites = new Dictionary<string, int>();
}

start
{
	vars.splitsDone = new HashSet<string>();
	vars.ready = false;
	vars.respites = new Dictionary<string, int>();
	
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
	if (old.LevelBuildDataId != 0 && old.LevelBuildDataId != current.LevelBuildDataId)
	{
		vars.lastLevel = old.LevelBuildDataId;
	}
	//print("->" + vars.GetName(current.LevelName));
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
		var ptrs = new Dictionary<string, IntPtr>{
					{"split_aptitude",		(IntPtr)current.AptitudeInventory},
					{"split_key", 			(IntPtr)current.KeyInventory},
					{"split_quest",			(IntPtr)current.QuestInventory},
					{"split_spirit",		(IntPtr)current.SpiritInventory},
					{"split_equipment_1",	(IntPtr)current.EquipmentInventory},
					{"split_equipment_2",	(IntPtr)current.EquipmentInventory},
					{"split_passive",		(IntPtr)current.PassiveInventory},
					{"split_assist",		(IntPtr)current.AssistInventory},
					{"split_material",		(IntPtr)current.MaterialInventory},
					{"split_grimoire",		(IntPtr)current.StatsInventory},
			};

		var items = new HashSet<IntPtr> {};
		foreach (var kvp in ptrs)
			if (settings[kvp.Key])
				items.Add(kvp.Value);
		bool split = false;
		foreach (var ptr in items)
		{
			int count = new DeepPointer(ptr + 0x60).Deref<int>(game);
			for (int i = 0; i < count; ++i)	
			{
				int item = new DeepPointer(ptr + 0x58, i * 0x14).Deref<int>(game);
				string str = vars.GetName(item).ToLower();
				if (vars.obj_count.ContainsKey(str))
				{
					int quantity = new DeepPointer(ptr + 0x58, (i * 0x14) + 0x8).Deref<int>(game);
					str = str + "_" + quantity.ToString();
				}
				if (!settings.ContainsKey(str) || !settings[str] || vars.splitsDone.Contains(str))
					continue;
				vars.splitsDone.Add(str);
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
		
		bool isDead = new DeepPointer(obj + 0x8D8, 0x3B).Deref<bool>(game);
		current.dead = isDead;
		
		if (current.dead && !old.dead)
		{
			vars.splitsDone.Add(str);
			return true;
		}
		return false;
	});
	
	if (settings["split_boss"] && current.EnemyTargetsCount > 0 && CheckBossSplit(current.EnemyTargetObjectIndex))
		return true;
	
	if (settings["split_boss_room"] && current.LevelName != 0 && old.LevelName != current.LevelName)
	{
		string str = vars.GetName(current.LevelName);
		if (!settings[str] || vars.splitsDone.Contains(str))
			return false;
		vars.splitsDone.Add(str);
		return true;
	}
	
	if (CheckInventorySplit())
		return true;
	
	if (settings["split_restpoint"])
	{
		int count = current.CachedIconsCount;
		IntPtr ptr = (IntPtr)current.CachedIcons;
		for (int i = 0; i < count; ++i)
		{
			int name = new DeepPointer(ptr + i * 0x8, 0x5E0).Deref<int>(game);
			if (name > 0)
			{
				string str = vars.GetName(name);
				if (string.IsNullOrEmpty(str) || !vars.restpoints.ContainsKey(str) || !settings[str] || vars.splitsDone.Contains(str))
					continue;
				int visible = new DeepPointer(ptr + i * 0x8, 0xDC).Deref<int>(game);
				if (!(vars as IDictionary<string, object>).ContainsKey("respites"))
					vars.respites = new Dictionary<string, int>();
				if (visible == 4 && vars.respites.ContainsKey(str) && vars.respites[str] == 2)
				{
					vars.respites[str] = visible;
					vars.splitsDone.Add(str);
					return true;
				}
				vars.respites[str] = visible;
			}
		}
	}

	return false;
}


shutdown
{
}
