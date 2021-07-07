#pragma newdecls required
#pragma semicolon 1

#include <vip_core>
#include <sdktools>

#define VIP_FEATURE "bumpmine"

public Plugin myinfo =
{
	name 		= "VIP_BumpMine",
	author		= "wixess",
	description	= "",
	version		= "1.0.0",
	url			= ""
};

public void VIP_OnPlayerSpawn(int iClient, int iTeam, bool bIsVIP)
{
	if(bIsVIP)
	{
		GivePlayerItem(iClient, "weapon_bumpmine");
	}
}

public void VIP_OnVIPLoaded()
{
	VIP_RegisterFeature(VIP_FEATURE, BOOL, TOGGLABLE);
}