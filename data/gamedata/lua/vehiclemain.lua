-- $Id: vehiclemain.lua,v 1.6 2004/10/18 09:12:00 den Exp $

AI = 
{
	level = 2,			-- Матрица главного уровня
	
	VAR = 
	{
		CurPos = "AIGetCurPos"
	},
	
	SIGNALS =
	{
		ACT_FINISHED			= 0,
		CMD_DEFEND				= {extern = "S1"},
		CMD_MOVE				= {extern = "S2", params = {"NewPos"}},
		CMD_ATTACK				= {extern = "S3", params = {"NewEnemyId"}},

		EVN_DIE					= {extern = "S7"},
		EVN_ATTACKED_BY_ENEMY	= 0
	},
	
	STATES =
	{
		Defend		= {func = "VehicleAIOnDefend",	scheme = {S1 = "ACT_FINISHED"} },
		Move		= {func = "VehicleAIOnMove",	scheme = {S1 = "ACT_FINISHED"} },
		Attack		= {func = "VehicleAIOnAttack",	scheme = {S1 = "ACT_FINISHED"} }, 
		Dead		= {func = "VehicleAIOnDead",	scheme = {S1 = "ACT_FINISHED"} }
	},
	
	-- решим...
	default = {"Defend",	{"CurPos"}},
	
	
	-- "CMD" = {["STACK_PUSH"], {"Func", "Param1", "Param2"}}
	DECISION =
	{
		Defend =
		{
			CMD_MOVE		= {{"Move",			{"NewPos"}}},
			CMD_ATTACK  	= {{"Attack",		{"NewEnemyId"}}},
			EVN_DIE			= {{"Dead"}}
		},

		Move =
		{
			CMD_MOVE		= {{"Move",			{"NewPos"}}},
			CMD_ATTACK  	= {{"Attack",		{"NewEnemyId"}}},
			EVN_DIE			= {{"Dead"}}
		},

		Attack =
		{
			CMD_MOVE		= {{"Move",			{"NewPos"}}},
			CMD_ATTACK  	= {{"Attack",		{"NewEnemyId"}}},
			EVN_DIE			= {{"Dead"}}
		}
	}
}
