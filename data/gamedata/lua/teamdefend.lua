-- $Id: teamdefend.lua,v 1.2 2004/10/18 09:12:00 den Exp $

AI = 
{
	level = 1,			-- Матрица уровня анимации
	
	VAR = {},
	
	SIGNALS =
	{
		ACT_FINISHED			= 0
	},
	
	STATES =
	{
		StartDefend	= {func = "TeamAIOnStartDefend",	scheme = {S1 = "ACT_FINISHED"}},
		Idle		= {func = "TeamAIOnIdle"}
	},
	
	default		= {"StartDefend"},
	
			-- "CMD" = {["STACK_PUSH"], {"Func", "Param1", "Param2"}}
	DECISION =
	{
		StartDefend =
		{
			ACT_FINISHED	= {{"Idle"}}
		}
	}
}
