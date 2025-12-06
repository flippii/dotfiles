local wezterm = require 'wezterm'

-- Show which key table is active in the status area
wezterm.on('update-right-status', function(window, pane)
	local name = window:active_key_table()
	if name then
        name = 'TABLE: ' .. name
	end
	window:set_right_status(name or '')
end)

return {
	adjust_window_size_when_changing_font_size = false,
	color_scheme = 'Catppuccin Mocha',
	enable_tab_bar = true,
	initial_rows = 60,
	initial_cols = 200,
	font_size = 15.0,
	font = wezterm.font('JetBrains Mono'),
	macos_window_background_blur = 30,
	window_background_opacity = 1.0,
	window_decorations = 'RESIZE',
	window_close_confirmation = 'NeverPrompt',

	keys = {
		{
			key = 'P',
			mods = 'CMD|SHIFT',
			action = wezterm.action.ActivateCommandPalette,
		},
		{
			key = 'F',
			mods = 'CMD|SHIFT',
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = 'W',
			mods = 'CMD|SHIFT',
			action = wezterm.action.CloseCurrentPane { confirm = true },
		},
		{
			key = 'D',
			mods = 'CTRL|SHIFT',
			action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
		},
		{
			key = 'D',
			mods = 'CMD|SHIFT',
			action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
		},
		{
			key = 'LeftArrow',
			mods = 'CMD|SHIFT',
			action = wezterm.action.ActivatePaneDirection 'Left',
		},
		{
			key = 'RightArrow',
			mods = 'CMD|SHIFT',
			action = wezterm.action.ActivatePaneDirection 'Right',
		},
		{
			key = 'UpArrow',
			mods = 'CMD|SHIFT',
			action = wezterm.action.ActivatePaneDirection 'Up',
		},
		{
			key = 'DownArrow',
			mods = 'CMD|SHIFT',
			action = wezterm.action.ActivatePaneDirection 'Down',
		},
		{
			key = 'LeftArrow',
			mods = 'CTRL|SHIFT',
			action = wezterm.action.AdjustPaneSize { 'Left', 5 },
		},
		{
			key = 'RightArrow',
			mods = 'CTRL|SHIFT',
			action = wezterm.action.AdjustPaneSize { 'Right', 5 },
		},
		{
			key = 'UpArrow',
			mods = 'CTRL|SHIFT',
			action = wezterm.action.AdjustPaneSize { 'Up', 5 },
		},
		{
			key = 'DownArrow',
			mods = 'CTRL|SHIFT',
			action = wezterm.action.AdjustPaneSize { 'Down', 5 },
		},
		{
			key = 'Z',
			mods = 'CMD|SHIFT',
			action = wezterm.action.TogglePaneZoomState,
		},
	},
}
