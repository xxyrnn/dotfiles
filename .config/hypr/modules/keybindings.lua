-----------------------
--- keybindings.lua ---
-----------------------

--- MOST USED

local terminal = "kitty"
local file_manager = "nemo"
--- rofi options are single-dashed
local menu = "rofi"
--- wofi options are double-dashed
-- local menu = "wofi"
local browser = "firefox"

--- MAIN

local main_mod = "SUPER" --- "Windows" key

hl.bind(main_mod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(main_mod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(main_mod .. " + Q", hl.dsp.window.kill())
hl.bind(main_mod .. " + SHIFT + Q", hl.dsp.exec_cmd("wleave"))
hl.bind(main_mod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(main_mod .. " + M", hl.dsp.exec_cmd("hyprshutdown"))
hl.bind(main_mod .. " + E", hl.dsp.exec_cmd(file_manager))
hl.bind(main_mod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(main_mod .. " + D", hl.dsp.exec_cmd(menu .. " -show drun"))
hl.bind(main_mod .. " + R", hl.dsp.exec_cmd(menu .. " -show run"))
hl.bind("ALT + TAB", hl.dsp.exec_cmd(menu .. " -show window"))
hl.bind(main_mod .. " + SHIFT + D", hl.dsp.exec_cmd("networkmanager_dmenu"))
hl.bind(main_mod .. " + CTRL + D", hl.dsp.exec_cmd("rofi-bluetooth"))
hl.bind(main_mod .. " + P", hl.dsp.window.pseudo())
hl.bind(main_mod .. " + J", hl.dsp.layout("togglesplit"))
--- reset waybar
hl.bind(main_mod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.config/waybar/scripts/tglbar.sh"))
--- fullscreen applications
hl.bind(main_mod .. " + F", hl.dsp.window.fullscreen({ mode = 1 }))
--- theme selector
hl.bind(main_mod .. " + T", hl.dsp.exec_cmd("~/.config/colorschemes/rofi-launcher.sh"))
--- pick colors with main_mod + "Stamp"
hl.bind(main_mod .. " + Print", hl.dsp.exec_cmd("hyprpicker -al"))
--- take screenshots with the "Stamp" key
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m region -o $HOME/Pictures/Screenshots"))

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
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+", { locked = true, repeating = true })
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-", { locked = true, repeating = true })
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle", { locked = true, repeating = true })
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle", { locked = true, repeating = true })
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 10%+", { locked = true, repeating = true }))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 10%-", { locked = true, repeating = true }))

--- laptop multimedia keys for media control (requires playerctl)
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
