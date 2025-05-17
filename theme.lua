-- Gruvbox AwesomeWM Theme
----------------------------

local theme_assets = require("beautiful.theme_assets")
local gfs          = require("gears.filesystem")
local gears        = require("gears")
local themes_path  = gfs.get_themes_dir()

local theme = {}

-- Font
theme.font = "sans Bold 10"

-- Gruvbox Colors
theme.bg_dark    = "#282828"
theme.bg_light   = "#fbf1c7"
theme.fg_normal  = "#ebdbb2"
theme.fg_focus   = "#d79921"
theme.fg_urgent  = "#cc241d"

theme.bg_normal  = theme.bg_dark
theme.bg_focus   = "#3c3836"
theme.bg_urgent  = "#9d0006"
theme.bg_systray = theme.bg_normal

-- Borders
theme.border_width  = 2
theme.border_normal = "#928374"
theme.border_focus  = theme.fg_focus
theme.border_marked = "#b16286"

-- Menu
theme.menu_height       = 25
theme.menu_width        = 120
theme.menu_bg_normal    = theme.bg_dark
theme.menu_bg_focus     = theme.bg_focus
theme.menu_fg_normal    = theme.fg_normal
theme.menu_fg_focus     = theme.fg_focus
theme.menu_border_color = theme.border_normal
theme.menu_submenu_icon = themes_path .. "default/submenu.png"

-- Wallpaper
theme.wallpaper = themes_path .. "default/background.png"

-- Taglist
theme.taglist_font        = "sans Bold 14"
theme.taglist_spacing     = 5
theme.taglist_bg_focus    = theme.bg_focus
theme.taglist_fg_focus    = theme.fg_focus
theme.taglist_bg_urgent   = theme.bg_urgent
theme.taglist_fg_urgent   = theme.fg_urgent
theme.taglist_bg_occupied = theme.bg_normal
theme.taglist_fg_occupied = "#a89984"
theme.taglist_bg_empty    = theme.bg_normal
theme.taglist_fg_empty    = "#504945"

-- Custom taglist squares
local taglist_square_size = 4
theme.taglist_squares_sel   = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)

-- Tasklist
theme.tasklist_bg_focus  = theme.bg_focus
theme.tasklist_fg_focus  = theme.fg_focus
theme.tasklist_bg_urgent = theme.bg_urgent
theme.tasklist_fg_urgent = theme.fg_urgent
theme.tasklist_bg_normal = theme.bg_normal
theme.tasklist_fg_normal = theme.fg_normal

-- Titlebar
theme.titlebar_bg_focus  = theme.bg_focus
theme.titlebar_fg_focus  = theme.fg_focus
theme.titlebar_bg_normal = theme.bg_normal
theme.titlebar_fg_normal = theme.fg_normal

-- Systray
theme.systray_icon_spacing = 4

-- Notifications
theme.notification_bg           = theme.bg_dark
theme.notification_fg           = theme.fg_normal
theme.notification_border_color = theme.border_normal
theme.notification_border_width = 2
theme.notification_opacity      = 0.9

-- Titlebar buttons
theme.titlebar_close_button_normal              = themes_path .. "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = themes_path .. "default/titlebar/close_focus.png"
theme.titlebar_minimize_button_normal           = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = themes_path .. "default/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive     = themes_path .. "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = themes_path .. "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = themes_path .. "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = themes_path .. "default/titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive    = themes_path .. "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = themes_path .. "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = themes_path .. "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = themes_path .. "default/titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive  = themes_path .. "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = themes_path .. "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = themes_path .. "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = themes_path .. "default/titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = themes_path .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = themes_path .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = themes_path .. "default/titlebar/maximized_focus_active.png"

-- Layout icons
theme.layout_fairh      = themes_path .. "default/layouts/fairhw.png"
theme.layout_fairv      = themes_path .. "default/layouts/fairvw.png"
theme.layout_floating   = themes_path .. "default/layouts/floatingw.png"
theme.layout_magnifier  = themes_path .. "default/layouts/magnifierw.png"
theme.layout_max        = themes_path .. "default/layouts/maxw.png"
theme.layout_fullscreen = themes_path .. "default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path .. "default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path .. "default/layouts/tileleftw.png"
theme.layout_tile       = themes_path .. "default/layouts/tilew.png"
theme.layout_tiletop    = themes_path .. "default/layouts/tiletopw.png"
theme.layout_spiral     = themes_path .. "default/layouts/spiralw.png"
theme.layout_dwindle    = themes_path .. "default/layouts/dwindlew.png"
theme.layout_cornernw   = themes_path .. "default/layouts/cornernww.png"
theme.layout_cornerne   = themes_path .. "default/layouts/cornernew.png"
theme.layout_cornersw   = themes_path .. "default/layouts/cornersww.png"
theme.layout_cornerse   = themes_path .. "default/layouts/cornersew.png"

-- Awesome Icon
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Icon Theme
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=4:softtabstop=4:textwidth=80
