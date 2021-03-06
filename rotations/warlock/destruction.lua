-- SPEC ID 267
ProbablyEngine.rotation.register(267, {

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

  -- Gnomes
  { "Escape Artist", "player.state.root" },
  { "Escape Artist", "player.state.snare" },

  -- <,&~ Horde ~&,> --
  -- Forsaken
  { "Will of the Forsaken", "player.state.fear" },
  { "Will of the Forsaken", "player.state.charm" },
  { "Will of the Forsaken", "player.state.sleep" },
  
  -- Goblins
  { "Rocket Barrage", "player.moving" },
  
  -----------------
  -- End Racials --
  -----------------
  
  --------------------
  -- Start Rotation --
  --------------------

  { "Dark Intent", "!player.buff" },
  { "Curse of the Elements", "!target.debuff" },

  -- Cooldowns
  { "Dark Soul: Instability",{ "modifier.shift", "modifier.cooldowns" }},
  { "Summon Terrorguard",{ "modifier.control", "modifier.cooldowns" }},
  { "Summon Doomguard",{ "modifier.control", "modifier.cooldowns" }},

  -- Rotation
  { "Immolate",{ "!modifier.last(Immolate)", "target.debuff(Immolate).duration <= 3" }},
  { "Shadowburn", "target.health <= 20" },
  { "Conflagrate" },
  { "Rain of Fire", "modifier.alt", "ground" },
  
  -- Moving
  {{
  { "Chaos Bolt",{ "!modifier.last(Chaos Bolt)", "player.embers >= 35" }},
  { "Chaos Bolt", "player.buff(Dark Soul: Instability)" },
  { "Chaos Bolt", "player.buff(Skull Banner)" } },
  { "!player.moving", "target.health > 20" }},
  
  -- KJC Moving
  {{ 
  { "Incinerate", "player.spell(Kil'jaeden's Cunning).exists" },
  { "Fel Flame", "!player.spell(Kil'jaeden's Cunning).exists" }, 
  },{ "player.moving" }},
  { "Incinerate",{ "!player.moving", "!player.spell(Kil'jaeden's Cunning).exists" }}
  
  ------------------
  -- End Rotation --
  ------------------
  
},{

  ---------------
  -- OOC Begin --
  ---------------
  
  { "Dark Intent", "!player.buff" },
  {{
  { "Summon Felhunter",{ "!modifier.last(Summon Felhunter)", "!player.spell(Grimoire of Supremacy).exists" }},
  { "Summon Observer",{ "!modifier.last(Summon Observer)", "player.spell(Grimoire of Supremacy).exists" }},
  },{ "!player.moving", "!pet.exists" }},
  
  { "Grimoire of Sacrifice",{ "player.spell(Grimoire of Sacrifice).exists", "!player.buff", "pet.exists" }}
  
  -------------
  -- OOC End --
  -------------
  
})
