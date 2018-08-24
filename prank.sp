#include <sourcemod>
#include <multicolors>

public Plugin:myinfo =
{
	name = "Case Opening Prank",
	author = "Cruze",
	description = "X opened a case",
	version = "1.0",
};

public OnPluginStart()
{
	RegAdminCmd("sm_prank", Prank, ADMFLAG_CHEATS);
}

public Action:Prank(client, args)
{
    new String:szName[MAX_NAME_LENGTH]   
    GetClientName(client, szName, sizeof(szName)) 
	if(GetClientTeam(client) == 2)
	{
		CPrintToChatAll("{orange}%s{default}  has opened a container and found: \x07Souvenir AWP | Dragon Lore", szName)

	}
	else if(GetClientTeam(client) == 3)
	{
		CPrintToChatAll("{blue}%s{default} has opened a container and found: \x07Souvenir AWP | Dragon Lore", szName)
	}
}