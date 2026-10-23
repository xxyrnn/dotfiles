-----------------------
--- keybindings.lua ---
-----------------------

--- COMMON APPS

local terminal = "kitty" --- other common options: `foot`, `alacritty`
local file_manager = "nemo" --- other common options: `thunar`, `dolphin`
local menu = "rofi" --- other common options: `wofi`, `dmenu`
local browser = "helium-browser" --- other common options: `firefox`, `chromium`

--- MAIN

local main_mod = "SUPER" --- "Windows" key

hl.bind(main_mod .. " + RETURN", hl.dsp.exec_cmd(terminal)) --- launch terminal
hl.bind(main_mod .. " + B", hl.dsp.exec_cmd(browser)) --- launch web browser
hl.bind(main_mod .. " + Q", hl.dsp.window.close()) --- close active window
hl.bind(main_mod .. " + SHIFT + Q", hl.dsp.exec_cmd("wleave")) --- power menu
hl.bind(main_mod .. " + L", hl.dsp.exec_cmd("hyprlock")) --- lock screen
hl.bind(main_mod .. " + M", hl.dsp.exec_cmd("hyprshutdown")) --- exit hyprland
hl.bind(main_mod .. " + E", hl.dsp.exec_cmd(file_manager)) --- launch file explorer
hl.bind(main_mod .. " + V", hl.dsp.window.float({ action = "toggle" }))
--- NOTE: single-dashed options for rofi, double-dashed for wofi
hl.bind(main_mod .. " + D", hl.dsp.exec_cmd(menu .. " -show drun")) --- open app menu
hl.bind(main_mod .. " + SHIFT + D", hl.dsp.exec_cmd("networkmanager_dmenu")) --- show a wifi connection menu using rofi
hl.bind(main_mod .. " + CTRL + D", hl.dsp.exec_cmd("rofi-bluetooth")) --- show a bluetooth connection menu using rofi
hl.bind(main_mod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.config/waybar/scripts/tglbar.sh")) --- toggle waybar
hl.bind(main_mod .. " + F", hl.dsp.window.fullscreen({ mode = 1 }))
hl.bind(main_mod .. " + T", hl.dsp.exec_cmd("~/.config/themes/rofi-launcher.sh")) --- theme selector
hl.bind(main_mod .. " + SHIFT + T", hl.dsp.exec_cmd("~/.config/themes/wallpaper-selector.sh")) --- wallpaper selector
hl.bind(main_mod .. " + Print", hl.dsp.exec_cmd("hyprpicker -al")) --- color picker
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m region -o $HOME/Pictures/Screenshots")) --- take screenshot

--- move focus with main_mod + arrow keys
hl.bind(main_mod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(main_mod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(main_mod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(main_mod .. " + down", hl.dsp.focus({ direction = "d" }))

--- move active window with main_mod + SHIFT + arrow keys
hl.bind(main_mod .. " + SHIFT + left", hl.dsp.window.move({ direction = "l" }))
hl.bind(main_mod .. " + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind(main_mod .. " + SHIFT + up", hl.dsp.window.move({ direction = "u" }))
hl.bind(main_mod .. " + SHIFT + down", hl.dsp.window.move({ direction = "d" }))

--- switch workspaces with main_mod + [0-9]
--- move active window to a workspace with main_mod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(main_mod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(main_mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

--- special workspace (scratchpad)
hl.bind(main_mod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(main_mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

--- scroll through existing workspaces with main_mod + scroll
hl.bind(main_mod .. " + mouse_up", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(main_mod .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" }))

--- move/resize windows with main_mod + LMB/RMB and dragging
hl.bind(main_mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(main_mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

--- laptop multimedia keys for volume and screen brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -n0 set 10%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -n0 set 10%-"), { locked = true, repeating = true })

--- laptop multimedia keys for media control (requires playerctl)
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
