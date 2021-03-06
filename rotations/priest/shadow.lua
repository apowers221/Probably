-- SPEC ID 258
-- 7/11/2013 - Changed by j
ProbablyEngine.rotation.register(258, {
    
  -------------------
  -- Start Racials --
  -------------------
  
  -- =^*~ Alliance ~*^= --
  -- Dwarves
  { "Stoneform", "player.health <= 65" },
 
  -- Humans
  { "Every Man for Himself", "player.state.charm" },
  { "Every Man for Himself", "player.state.fear" },
  { "Every Man for Himself", "player.state.incapacitate" },
  { "Every Man for Himself", "player.state.sleep" },
  { "Every Man for Himself", "player.state.stun" },
 
  -- Draenei
  { "Gift of the Naaru", "player.health <= 70", "player" },
 
  -- Gnomes
  { "Escape Artist", "player.state.root" },
  { "Escape Artist", "player.state.snare" },

  -- Night Elves
  { "Shadowmeld", "target.threat >= 80" },
  { "Shadowmeld", "focus.threat >= 80"},
  
  -- <,&~ Horde ~&,> --
  -- Forsaken
  { "Will of the Forsaken", "player.state.fear" },
  { "Will of the Forsaken", "player.state.charm" },
  { "Will of the Forsaken", "player.state.sleep" },
  
  -- Goblins
  { "Rocket Barrage", "player.moving" },
  
  -- _,-=%Pandaren%=-,_ --
  { "Quaking Palm", "modifier.interrupts" },
  
  -----------------
  -- End Racials --
  -----------------
  
  --------------------
  -- Start Rotation --
  --------------------
  
  -- Cooldowns
  { "Power Infusion", "modifier.cooldowns" },
  { "Shadowfiend",    "modifier.cooldowns" },
    
  -- Keybinds
  { "Mind Sear", "modifier.shift" },
    
  -- If Moving
  { "Shadow Word: Pain", "player.moving" },
  { "Cascade", "player.moving" },
  { "Halo", "player.moving" },
  { "Shadow Word: Death", "player.moving" },
    
  -- Rotation
  { "Mind Blast", "player.buff(Divine Insight)" },
  { "Devouring Plague", "player.shadoworbs = 3" },
  { "Mind Blast" }, 
  { "Shadow Word: Death", "target.debuff(Shadow Word: Death).duration < 1" },
  { "Shadow Word: Pain", "target.debuff(Shadow Word: Pain).duration < 1" },
  { "Vampiric Touch", "target.debuff(Vampiric Touch).duration < 1" },
  { "Mind Flay", "target.debuff(Devouring Plague)" }, 
  { "Cascade", },
  { "Halo" },
  { "Mind Spike", "player.buff(Surge of Darkness)" },
  { "Mind Flay" },
  { "Shadow Word: Death" },
  
  ------------------
  -- End Rotation --
  ------------------
  
  }, {
  
  ---------------
  -- OOC Begin --
  ---------------
  
  { "Power Word: Fortitude", "!player.buff(Power Word: Fortitude)" },
  { "Inner Fire", "!player.buff(Inner Fire)" },
  { "Shadow Form", "!player.buff(Shadowform)" },
  
  -------------
  -- OOC End --
  -------------
  
  })
