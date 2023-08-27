-- $Id: teamattack.lua,v 1.7 2005/06/01 14:08:59 anton Exp $

AI = 
{
	level = 1,							-- Матрица уровня анимации
	
	VAR = 
	{
		EnemyID = "AIGetState2Param1",
	},
	
	SIGNALS =
	{
		ACT_FINISHED			= 0,
		ACT_ENEMYDESTROYED		= 0
	},
	
	STATES =
	{
		StartAttack				= { func = "TeamAIOnStartAttack",
									scheme = { S1 = "ACT_FINISHED" }},

		AttackOrder				= { func = "TeamAIOnAttackOrder",
									scheme = { S1 = "ACT_FINISHED" }},

		EnemyDestroyed			= { func = "TeamAIOnEnemyDestroyed" }
	},
	
	default         = {"StartAttack",       {"EnemyID"}},
	
	exit            = "EnemyDestroyed",
	
	-- "CMD" = {["STACK_PUSH"], {"Func", "Param1", "Param2"}}
	DECISION =
	{
		StartAttack =
		{
			ACT_FINISHED      = {{"AttackOrder", {"EnemyID"}}}
		},

		AttackOrder =
		{
			ACT_FINISHED      = {{"EnemyDestroyed"}}
		}
	}
}
