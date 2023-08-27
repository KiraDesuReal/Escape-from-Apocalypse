------------------------------------------------------------------------------
--
-- Workfile: renderHelpers.lua
-- Created by: Plus
-- Copyright (C) 2004 Targem Ltd. All rights reserved.
--
-- Misc global render related functions.
--
------------------------------------------------------------------------------
-- $Id: renderHelpers.lua,v 1.1 2004/09/20 09:21:11 plus Exp $
------------------------------------------------------------------------------

-- enable/disable fullscreen motion blur
function g_EnableMotionBlur( enable, alpha )

	if enable then
		RuleConsole "g_motionBlur 1"

		--if not alpha then alpha = 0.4 end
		if alpha then
			RuleConsole( "g_motionBlurAlpha "..tostring( alpha ) )
		end
	else
		RuleConsole "g_motionBlur 0"
	end		      	
end


-- enable/disable bloom effect
function g_EnableBloom( enable, origTerm, blurTerm )

	if enable then
		RuleConsole "g_bloom 1"
		
		--if not origTerm then origTerm = 0.7 end
		if origTerm then
			RuleConsole( "g_bloomOrigTerm " .. tostring( origTerm ) )
		end

		--if not blurTerm then blurTerm = 0.4 end
		if blurTerm then
			RuleConsole( "g_bloomBlurTerm "..tostring( blurTerm ) )
		end
	else
		RuleConsole "g_bloom 0"
	end
end