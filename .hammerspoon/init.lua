-- Reload config on write
function reloadConfig(files)
  hs.reload()
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")
 
-- Disable animation
hs.window.animationDuration = 0

local hyper = {"ctrl", "alt"}

hs.grid.MARGINX = 0
hs.grid.MARGINY = 0
hs.grid.GRIDWIDTH = 10
hs.grid.GRIDHEIGHT = 10

-- Move to right half
hs.hotkey.bind(hyper, "H", function()
  local win = hs.window.focusedWindow()
  hs.grid.set(win, { x = 0, y = 0, w = 5, h = 10 }, win:screen())
end)

-- Move window to left half
hs.hotkey.bind(hyper, "L", function()
  local win = hs.window.focusedWindow()
  hs.grid.set(win, { x = 5, y = 0, w = 5, h = 10 }, win:screen())
end)

-- Full screen
hs.hotkey.bind(hyper, "M", function()
  local win = hs.window.focusedWindow()
  hs.grid.set(win, { x = 0, y = 0, w = 10, h = 10 }, win:screen())
end)

-- Move to bottom half
hs.hotkey.bind(hyper, "J", function()
  local win = hs.window.focusedWindow()
  hs.grid.set(win, { x = 0, y = 5, w = 10, h = 5 }, win:screen())
end)

-- Move to top half
hs.hotkey.bind(hyper, "K", function()
  local win = hs.window.focusedWindow()
  hs.grid.set(win, { x = 0, y = 0, w = 10, h = 5 }, win:screen())
end)

-- Application hotkeys
local charsToApps = {
  c = "Google Chrome",
  n = "Notes",
  t = "iTerm",
  p = "1Password 5"
}
for key, app in pairs(charsToApps) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end

-- Caffeine
local caffeine = hs.menubar.new()

function setCaffeineDisplay(state)
  if state then
    caffeine:setIcon("active.pdf")
  else
    caffeine:setIcon("inactive.pdf")
  end
end

function caffeineClicked()
  setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
  caffeine:setClickCallback(caffeineClicked)
  setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

-- Always start Caffeine on
caffeineClicked()
