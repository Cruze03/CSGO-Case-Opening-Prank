#include <sourcemod>
#include <multicolors>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo =
{
	name = "Case Opening Prank",
	author = "Cruze",
	description = "X opened a case",
	version = "1.1",
};

public void OnPluginStart()
{
	RegAdminCmd("sm_prank", Prank, ADMFLAG_CHEATS);
}

public Action Prank(int client, int args)
{
	if(GetClientTeam(client) == 2)
	{
		CPrintToChatAll("{orange}%N{default}  has opened a container and found: {lightred}Souvenir AWP | Dragon Lore", client)

	}
	else if(GetClientTeam(client) == 3)
	{
		CPrintToChatAll("{blue}%N{default} has opened a container and found: {lightred}Souvenir AWP | Dragon Lore", client)
	}
}
