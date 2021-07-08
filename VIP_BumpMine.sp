#pragma newdecls required
#pragma semicolon 1

#include <vip_core>
#include <sdktools>

#define VIP_FEATURE "bumpmine"

public Plugin myinfo = 
{
	name = "VIP_BumpMine", 
	author = "wixess", 
	description = "", 
	version = "1.0.2", 
	url = ""
};

public void VIP_OnPlayerSpawn(int iClient, int iTeam, bool bIsVIP)
{
	if (bIsVIP)
	{
		int weapon = GetPlayerWeaponSlot(iClient, 5);
		if (weapon != 1)
		{
			char sClassname[32];
			GetEntityClassname(weapon, sClassname, sizeof sClassname);
			if (!strcmp(sClassname, "weapon_bumpmine"))
			{
				AcceptEntityInput(weapon, "kill");
			}
		}
		GivePlayerItem(iClient, "weapon_bumpmine");
	}
}

public void VIP_OnVIPLoaded()
{
	VIP_RegisterFeature(VIP_FEATURE, BOOL, TOGGLABLE);
} 
