-- $Id: teammove.lua,v 1.3 2004/10/28 10:25:32 anton Exp $

AI = 
{
	level = 1,			-- Матрица уровня анимации
	
	VAR = 
	{
		Pos				= "AIGetState2Param1",
		CurAngle		= "TeamAIGetCurAngle"
	},
	
	SIGNALS =
	{
		ACT_FINISHED			= 0,
		ACT_POS_UNREACHABLE		= 0,
		ACT_TARGETREACHED		= 0,
		ACT_CANCELED			= 0
	},
	
	STATES =
	{
		StartSearch				= {func = "TeamAIOnStartSearch", scheme = {
												S1 = "ACT_FINISHED",
												S2 = "ACT_CANCELED"}},
												
		PathFind				= {func = "TeamAIOnPathFind", scheme = {
												S1 = "ACT_FINISHED", 
												S2 = "ACT_TARGETREACHED",
												S3 = "ACT_POS_UNREACHABLE"}},
												
		MoveAlongPath			= {func = "TeamAIOnMoveAlongPath",		scheme = {S1 = "ACT_TARGETREACHED"}},

	--	FallIn					= {func = "TeamAIOnFallIn",				scheme = {S1 = "ACT_FINISHED"}},

		TargetReached			= {func = "TeamAIOnTargetReached",		scheme = {S1 = "ACT_FINISHED"}},
		
		TargetUnreachable		= {func = "TeamAIOnTargetUnreachable",	scheme = {S1 = "ACT_FINISHED"}},
		
		MoveFinished			= {func = "TeamAIOnMoveFinished"}
	},
	
	default		= {"StartSearch",	{"Pos"}},
	
	exit		= "MoveFinished",
	
			-- "CMD" = {["STACK_PUSH"], {"Func", "Param1", "Param2"}}
	DECISION =
	{
		StartSearch =
		{
			ACT_FINISHED			= {{"PathFind"}},
			ACT_CANCELED			= {{"TargetUnreachable"}}
		},
		
		PathFind =
		{
			ACT_FINISHED			= {{"MoveAlongPath"}},
			ACT_TARGETREACHED		= {{"TargetReached"}},
			ACT_POS_UNREACHABLE		= {{"TargetUnreachable"}}
		},

		MoveAlongPath =
		{
			ACT_TARGETREACHED		= {{"TargetReached"}}
		},
		
		TargetReached =
		{
			ACT_FINISHED			= {{"MoveFinished"}}
		},

		TargetUnreachable =
		{
			ACT_FINISHED			= {{"MoveFinished"}}
		}
	}
}
