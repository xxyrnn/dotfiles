---------------------
--- autostart.lua ---
---------------------

--- NetworkManager tray icon
hl.on("hyprland.start", function()
	hl.exec_cmd("nm-applet")

	--- bluetooth tray icon
	hl.exec_cmd("blueman-applet")

	--- notification daemon
	-- hl.exec_cmd("dunst")
	--- notification center with integrated daemon
	hl.exec_cmd("swaync")

	--- wallpaper
	hl.exec_cmd("awww-daemon")

	--- status bar
	hl.exec_cmd("waybar")

	--- reduce brightness or lock screen when idle
	-- hl.exec_cmd("hypridle")

	--- plugins
	hl.exec_cmd("hyprpm reload")

	--- box for password prompt
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

	--- auto-mount removable media
	hl.exec_cmd("udiskie")

	--- GTK theme
	hl.exec_cmd("nwg-look -a")

	--- hyprshade
	hl.exec_cmd("hyprshade auto")

	--- noctalia
	--- uncomment if you do not want to use it
	hl.exec_cmd("qs -c noctalia-shell")
end)
