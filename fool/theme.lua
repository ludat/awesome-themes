-- fool, high contrast awesome3 theme, by ludat based on foo by rob

--{{{ Main
local awful = require("awful")
awful.util = require("awful.util")

theme = {}

home          = os.getenv("HOME")
config        = awful.util.getdir("config")
shared        = "/usr/share/awesome"
if not awful.util.file_readable(shared .. "/icons/awesome16.png") then
    shared    = "/usr/share/local/awesome"
end
sharedicons   = shared .. "/icons"
sharedthemes  = shared .. "/themes"
themes        = config .. "/themes"
themename     = "/fool"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir      = themes .. themename

wallpaper1    = themedir .. "/background.jpg"
wallpaper2    = themedir .. "/background.png"
wallpaper3    = sharedthemes .. "/zenburn/zenburn-background.png"
wallpaper4    = sharedthemes .. "/default/background.png"
wpscript      = home .. "/.wallpaper"

if awful.util.file_readable(wallpaper1) then
  theme.wallpaper = wallpaper1
elseif awful.util.file_readable(wallpaper2) then
  theme.wallpaper = wallpaper2
elseif awful.util.file_readable(wpscript) then
  theme.wallpaper_cmd = { "sh " .. wpscript }
elseif awful.util.file_readable(wallpaper3) then
  theme.wallpaper = wallpaper3
else
  theme.wallpaper = wallpaper4
end
--}}}

theme.font    = "Visitor TT1 BRK 7"

theme.bg_normal     = "#333333"
theme.bg_focus      = "#1279bf"
theme.bg_urgent     = "#00ff00"

theme.fg_normal     = "#999999"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#111111"

theme.border_width  = 2
theme.border_normal = "#333333"
theme.border_focus  = "#1279bf"

--[[theme.bg_normal = "#000000"
theme.bg_focus  = "#2e8b57"
theme.bg_urgent = "#a52a2a"

theme.fg_normal = "#00ffff"
theme.fg_focus  = "#000000"
theme.fg_urgent = "#000000"

theme.border_width  = 2
theme.border_normal = "#000000"
theme.border_focus  = "#2e8b57"]]

theme.taglist_squares_sel         = themedir .. "/tasklist_f.png"
theme.taglist_squares_unsel       = themedir .. "/tasklist_u.png"
theme.tasklist_floating_icon      = themedir .. "/floating.png"

theme.titlebar_close_button_normal = sharedthemes .. "/default/titlebar/close.png"
theme.titlebar_close_button_focus  = sharedthemes .. "/default/titlebar/closer.png"

theme.menu_submenu_icon = sharedthemes .. "/default/submenu.png"
theme.menu_height   = 15
theme.menu_width    = 100

-- You can use your own layout icons like this:
theme.layout_fairh      = themedir .. "/layouts/fairhw.png"
theme.layout_fairv      = themedir .. "/layouts/fairvw.png"
theme.layout_floating   = themedir .. "/layouts/floatingw.png"
theme.layout_magnifier  = themedir .. "/layouts/magnifierw.png"
theme.layout_max        = themedir .. "/layouts/maxw.png"
theme.layout_fullscreen = themedir .. "/layouts/fullscreenw.png"
theme.layout_tilebottom = themedir .. "/layouts/tilebottomw.png"
theme.layout_tileleft   = themedir .. "/layouts/tileleftw.png"
theme.layout_tile       = themedir .. "/layouts/tilew.png"
theme.layout_tiletop    = themedir .. "/layouts/tiletopw.png"
theme.layout_spiral     = themedir .. "/layouts/spiralw.png"
theme.layout_dwindle    = themedir .. "/layouts/dwindlew.png"



theme.awesome_icon      = sharedicons  .. "/awesome16.png"

return theme
