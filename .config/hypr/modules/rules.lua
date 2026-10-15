-----------------------
--- windowrules.lua ---
-----------------------

--- WORKSPACE RULES

--- make all workspaces persistent
for i = 1, 10 do
	hl.workspace_rule({ workspace = tostring(i), persistent = true })
end

--- WINDOW RULES

--- browsers and pdf readers on workspace 2
hl.window_rule({
	match = {
		class = "^(zen|firefox|chromium|org.gnome.Evince|atril|zathura)$",
	},

	workspace = "2",
})

--- code and text editors on workspace 3
hl.window_rule({
	match = {
		class = "^(Code|dev.zed.Zed|jetbrains-pycharm|jetbrains-idea|Eclipse|md.obsidian.Obsidian)$",
	},

	workspace = "3",
})

--- messaging apps and email clients on workspace 4
hl.window_rule({
	match = {
		class = "^(org.telegram.desktop|elecwhat|org.mozilla.Thunderbird)$",
	},

	workspace = "4",
})

--- media apps on workspace 5
hl.window_rule({
	match = {
		class = "^(vlc|imv|spotify)$",
	},

	workspace = "5",
})

--- make kitty float
-- hl.window_rule({
--     name = "floating-kitty",
--     match = {
--         class = "^(kitty)$"
--     },

--     float = true,
--     center = true
-- })

--- make file explorers floating
hl.window_rule({
	name = "floating-explorer",
	match = {
		class = "^(nemo|thunar|org.gnome.nautilus|dolphin)$",
	},

	float = true,
	center = true,
})

--- make Firefox profile selection floating
hl.window_rule({
	name = "floating-firefox-profiles",
	match = {
		class = "^(firefox)$",
		title = "^(Firefox - Choose a profile)$",
	},

	float = true,
	center = true,
})

--- make file save dialog floating
hl.window_rule({
	name = "floating-save-dialog",
	match = {
		class = "^(xdg-desktop-portal-gtk)$",
		title = "^(All Files)$",
	},

	float = true,
	center = true,
})

--- make nm-connection-editor floating
hl.window_rule({
	name = "floating-nm-connection-editor",
	match = {
		class = "^(nm-connection-editor)$",
		title = "^(Editing .+)$",
	},

	float = true,
	center = true,
})

--- make Obsidian settings floating
hl.window_rule({
	name = "floating-obsidian-settings",
	match = {
		class = "^(md.obsidian.Obsidian)$",
		title = "^(Settings .+)$",
	},

	float = true,
	center = true,
})

--- ignore maximize requests from apps
hl.window_rule({
	name = "suppress-maximize-events",
	match = {
		class = ".*",
	},

	suppress_event = "maximize",
})

--- LAYER RULES

hl.layer_rule({
	name = "blur-wlogout",
	match = {
		namespace = "logout_dialog",
	},

	blur = true,
	ignore_alpha = 0.5,
})

hl.layer_rule({
	name = "blur-swaync",
	match = {
		namespace = "swaync-control-center;swaync-notification-window",
	},

	blur = true,
	ignore_alpha = 0.5,
})

--- XWAYLAND

--- fix some dragging issues with xwayland
hl.window_rule({
	name = "fix-wayland-dragging-issues",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

--- fix pixelated font on x11 apps
hl.config({
	xwayland = {
		force_zero_scaling = true,
		use_nearest_neighbor = false,
	},
})
