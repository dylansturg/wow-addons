
-- Slash command(s)
-- Prefix: EPGPWIPER
-- Command(s):
--    /wipe - reset EPGP data to 0,0 (officer note) for all guild members

SLASH_EPGPWIPER_WIPE = '/epgpwipe';

local function handler(msg, editbox)
  print("You invoked my slash command.  Awesome job.");
end

SlashCmdList["EPGPWIPER"] = handler;

function AlertClicked()
  print("You clicked the button!");
end