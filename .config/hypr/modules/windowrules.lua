-----------------------
--- windowrules.lua ---
-----------------------

--- WINDOW RULES

hl.window_rule({
	match = {
		class = "^(zen|firefox|chromium|org.gnome.Evince|org.pwmt.zathura)$",
	},

	workspace = "2",
})

hl.window_rule({
	match = {
		class = "^(Code|dev.zed.Zed|jetbrains-pycharm|Eclipse|obsidian)$",
	},

	workspace = "3",
})

hl.window_rule({
	match = {
		class = "^(org.telegram.desktop|elecwhat)$",
	},

	workspace = "4",
})

hl.window_rule({
	match = {
		class = "^(vlc|qimgv|spotify)$",
	},

	workspace = "5",
})

--- make kitten float
-- hl.window_rule({
--     name = "floating-kitten",
--     match = {
--         class = "^(kitty)$"
--     },

--     float = true,
--     center = true
-- })

--- make nemo float
hl.window_rule({
	name = "floating-nemo",
	match = {
		class = "^(nemo)$",
	},

	float = true,
	center = true,
})

--- make file save dialog float
hl.window_rule({
	name = "floating-save-dialog",
	match = {
		class = "^(xdg-desktop-portal-gtk)$",
		title = "^(All Files)$",
	},

	float = true,
	center = true,
})

--- make nm-connection-editor float
hl.window_rule({
	name = "floating-nm-connection-editor",
	match = {
		class = "^(nm-connection-editor)$",
		title = "^(Editing .+)$",
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

hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "noctalia-background-.*$",
	},

	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})

--- XWAYLAND

--- fix pixelated font on x11 apps
hl.config({
	xwayland = {
		use_nearest_neighbor = false,
	},
})
