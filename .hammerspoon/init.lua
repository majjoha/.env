local battery = require "battery"
local keybindings = require "keybindings"

-- Disable animation when repositioning windows
hs.window.animationDuration = 0

local hyper = {"ctrl", "alt"}

hs.loadSpoon("SpoonInstall")

local spoons = {
  ReloadConfiguration = { start = true },
  Caffeine = { start = true },
  WindowHalfsAndThirds = {
    hotkeys = {
      left_half    = {hyper, "H" },
      right_half   = {hyper, "L" },
      bottom_half  = {hyper, "J"},
      top_half     = {hyper, "K"},
      top_right    = {hyper, "["},
      bottom_right = {hyper, "'"},
      top_left     = {hyper, ";"},
      bottom_left  = {hyper, "/"},
      max          = {hyper, "M" }
    }
  }
}

-- Load all spoons with their respective settings
for plugin, configuration in pairs(spoons) do
  spoon.SpoonInstall:andUse(plugin, configuration)
end

-- Start Caffeine on load
spoon.Caffeine:setState(true)

battery.init()
keybindings.init()

hs.alert.show("Config loaded")
