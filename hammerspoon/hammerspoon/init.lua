-- defaults write org.hammerspoon.Hammerspoon MJConfigFile "~/.config/hammerspoon/init.lua"
require("hs.ipc")
hs.ipc.cliInstall()
local binder = require('binder');
binder.bindKeys()



-- Disabling the watcher. Might be the cause for Hammerspoon not responding.
-- myWatcher = hs.pathwatcher.new(
--    os.getenv("HOME") .. "/.config/hammerspoon/",
--    function(files)
--       local doReload = false
--       for _,file in pairs(files) do
--          file = file:match("^.+/(.+)$")
--          if file:sub(-4) == ".lua" and not (file:sub(1,2) == ".#") then
--             doReload = true
--          end
--       end
--       if doReload then
--          hs.reload()
--       end
--    end
-- ):start()
hs.notify.show("Config loaded", "", "")
