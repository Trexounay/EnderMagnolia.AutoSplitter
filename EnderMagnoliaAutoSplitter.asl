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
	// fNamePool : 0x07CBF2C0;
	long world: 0x07EF2780, 0xA80, 0x78;

	//int GEngine->GameViewport->World->PersistentLevel->LevelBuildDataId
	long LevelBuildDataId: 0x07EF2780, 0xA80, 0x78, 0x30, 0x210;
	
	//int GEngine->GameViewport->World->GameMode->ZoneSystemComponent->ActiveZoneLevelStreaming->Name
	int LevelName: 0x07EF2780, 0xA80, 0x78, 0x158, 0x4B0, 0xF8, 0x38;
	
	//int GEngine->GameViewport->World->GameMode->ZoneSystemComponent->ActiveZoneLevelStreaming->Name
	int PackageNameToLoad: 0x07EF2780, 0xA80, 0x78, 0x158, 0x4B0, 0xF8, 0x54;
	
	// GEngine->GameInstance->SybSystems->WorldLoader->IsLoading
	bool isLoading: 0x07EF2780, 0x10A8, 0x108, 0x128, 0xA8;

	// GEngine->GameInstance->SybSystems->Save->SaveBackupNumber
	int SaveBackup: 0x07EF2780, 0x10A8, 0x108, 0x50, 0x7C;
	
	int RespawnRestPointID: 0x07EF2780, 0x10A8, 0x38, 0, 0x30, 0x9D8;
	
	double timeSinceStartup: 0x07EF2780, 0xA80, 0x78, 0x6C0;
}

startup
{
	// LevelBuildDataId
	vars.InGameLevelID = 0x4D8E43C149362583;
	vars.TitleLevelID  = 0x4706DC27818385BD;
	
	// locals
	vars.lastLevel = 0x0;
	
	
	// SETTINGS
	
	settings.Add("load_remover", true, "Load Remover");
	settings.SetToolTip("load_remover", "Pause timer during game loadings, only affects Game Time");

	settings.Add("config_split", true, "Splits Configuration (WIP)");
	settings.Add("split_ending", true, "Game Endings", "config_split");
	settings.SetToolTip("split_ending", "Split when reaching Ending A or B");
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
	switch(MD5Hash)
	{
		case "4E99ACB034B5729EB3B94C43C184C6F0": { 
			vars.fNamePool = 0x07CBF2C0;
			vars.GetName = new Func<int, string>((int comparison) => 
			{
				int block = comparison >> 16;
				int offset = comparison & 0xFFFF;
				DeepPointer header = new DeepPointer(vars.fNamePool + 0x10 + (0x8 * block));
				IntPtr ptr = header.Deref<IntPtr>(game) + (0x2 * offset);
				Int16 len = (Int16)(game.ReadValue<Int16>(ptr) >> 6);
				return game.ReadString(ptr + 0x2, len);
			});
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
}

start
{
	vars.splitsDone = new HashSet<string>();
	if (old.LevelBuildDataId != 0 && old.LevelBuildDataId != current.LevelBuildDataId)
	{
		vars.lastLevel = old.LevelBuildDataId;
	}
	return vars.lastLevel == vars.TitleLevelID && current.LevelBuildDataId == vars.InGameLevelID;
}

update
{
	if (version == "Unknown" || version == "")
		return false;

	if (current.LevelBuildDataId == vars.InGameLevelID && old.SaveBackup != current.SaveBackup)
	{
		print(vars.GetName(current.LevelName));
		print(vars.GetName(current.PackageNameToLoad));
	}
	
	if (old.LevelBuildDataId != 0 && old.LevelBuildDataId != current.LevelBuildDataId)
	{
		vars.lastLevel = old.LevelBuildDataId;
	}
	return true;
}


isLoading
{
	return settings["load_remover"] && current.isLoading;
}


reset
{
	return current.LevelBuildDataId == vars.TitleLevelID;
} 

split
{
	if (current.LevelName == null || current.timeSinceStartup <= 0)
		return false;
	
	if (settings["split_ending"] &&  old.SaveBackup != current.SaveBackup &&
		vars.GetName(current.LevelName) == "Summit_001_Zone_030")
		return true;
	return false;
}


shutdown
{
}
