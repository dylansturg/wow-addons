
-- Slash command(s)
-- Prefix: EPGPWIPER
-- Command(s):
--    /wipe - reset EPGP data to 0,0 (officer note) for all guild members

SLASH_EPGPWIPER1 = '/epgpwipe';

local function handler(msg, editbox)
  print("About to wipe your guild's EPGP settings... Hope that's what you wanted. :)");
  local numTotalMembers = 0;
  local numOnlineMembers = 0;
  local numOnlineMaxLevelMembers = 0;

  print("Checking guild stats...");
  numTotalMembers, numOnlineMaxLevelMembers, numOnlineMembers = GetNumGuildMembers();

  print("Number of guild members: ");
  print(numTotalMembers);
  
  for i = 1, numTotalMembers, 1 do
    name, rank, rankIndex, level, class, zone, note, 
      officernote, online, status, classFileName, 
      achievementPoints, achievementRank, isMobile = GetGuildRosterInfo(i);
    
    print("Member " .. name .. "'s note: " .. officernote);

    GuildRosterSetOfficerNote(i, "0,0");
    
  end
  
end

SlashCmdList["EPGPWIPER"] = handler;

function AlertClicked()
  print("You clicked the button!");
end