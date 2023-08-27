-- $Id: teammain.lua,v 1.8 2005/06/01 14:09:00 anton Exp $

AI = 
{
	level = 2,			-- ћатрица главного уровн€

	-- ѕока от блока VAR избавитьс€ не удаетс€...	
	VAR = 
	{	 
		CurPos			= "TeamAIGetCurPos"
	},
	
	SIGNALS =
	{
		ACT_FINISHED	= 0, 

		CMD_MOVE		= {extern = "S1",	params = {"NewPos", "NewDir"}},
		CMD_ATTACK		= {extern = "S2",	params = {"NewObjID"}},
		CMD_STOP		= {extern = "S3"},
		CMD_MOVE_AND_CONTINUE   = {extern = "S4", 	params = {"NewPos", "NewDir"}},
	},
	
	STATES =
	{
		-- ѕараметры у состо€ний упоминаютс€ только в том случае, если они используютс€ здесь.
		-- ѕри этом должны перечисл€тьс€ все параметры.
		
		Defend		= {func = "TeamAIOnDefend",	scheme = {S1 = "ACT_FINISHED"}, submatrix = "TeamDefend.lua"},
		Attack		= {func = "TeamAIOnAttack",     scheme = {S1 = "ACT_FINISHED"}, submatrix = "TeamAttack.lua"},
--              Attack          = {func = "TeamAIOnAttack",     scheme = {S1 = "STACK_POP"}}, -- submatrix = "TeamAttack.lua"},
		Move		= {func = "TeamAIOnMove",		scheme = {S1 = "ACT_FINISHED"}, submatrix = "TeamMove.lua"}
	},
	
	-- решим...
	default = {"Defend",	{"CurPos"}},
	
	
	-- "CMD" = {["STACK_SAVE"], {"Func"[, {"Param1"[, "Param2"...]}]}, {"Func2", ...}, ...}
	--  оманды заталкиваютс€ в стек с конца списка.
	
	DECISION =
	{
		Defend =
		{
			CMD_MOVE		=	{{"Move",		{"NewPos", "NewDir"}}},
			CMD_ATTACK		=	{{"Attack",		{"NewObjID"}}},
			CMD_STOP		=	{{"Defend",		{"CurPos"}}},
			CMD_MOVE_AND_CONTINUE   =       {
								"STACK_SAVE",
								{"Move",		{"NewPos", "NewDir"}},
							},
		},

		Move =
		{
			CMD_MOVE		=	{{"Move",		{"NewPos", "NewDir"}}},
			CMD_ATTACK		=	{
									"STACK_SAVE",
									{"Attack",		{"NewObjID"}},
								},
			CMD_STOP		=	{{"Defend",		{"CurPos"}}},
			CMD_MOVE_AND_CONTINUE   =       {
								"STACK_SAVE",
								{"Move",		{"NewPos", "NewDir"}},
								},
		},

	
		Attack =
		{
			CMD_MOVE		=	{{"Move",		{"NewPos", "NewDir"}}},
			CMD_ATTACK		=	{{"Attack",		{"NewObjID"}}},
			CMD_STOP		=	{{"Defend",		{"CurPos"}}},
			CMD_MOVE_AND_CONTINUE   =       {
								"STACK_SAVE",
								{"Move",		{"NewPos", "NewDir"}},
							},
		}
	}
}