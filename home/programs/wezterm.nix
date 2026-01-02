{
  programs.wezterm = {
    enable = true;
    extraConfig = # lua
      ''
        local wezterm = require 'wezterm'
        local action = wezterm.action

        return {
          color_scheme = "Catppuccin Mocha",
          use_ime = true,
          font = wezterm.font_with_fallback {
            'ZedMono Nerd Font',
            'M+1Code Nerd Font',
          },
          font_size = 14.0,
          window_decorations = "NONE",
          use_fancy_tab_bar = false,
          disable_default_key_bindings = true;
          leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 1000 },
          keys = {
            {
              key = '-',
              mods = 'LEADER',
              action = action.DecreaseFontSize,
            },
            {
              key = '=',
              mods = 'LEADER',
              action = action.IncreaseFontSize,
            },
            {
              key = '0',
              mods = 'LEADER',
              action = action.ResetFontSize,
            },
            {
              key = 't',
              mods = 'LEADER',
              action = action.SpawnTab "CurrentPaneDomain",
            },
            {
              key = 'w',
              mods = 'LEADER',
              action = action.CloseCurrentTab { confirm=true },
            },
            {
              key = 'p',
              mods = 'LEADER',
              action = action.ActivateTabRelative(-1),
            },
            {
              key = 'n',
              mods = 'LEADER',
              action = action.ActivateTabRelative(1),
            },
            {
              key = 'p',
              mods = 'LEADER|SHIFT',
              action = action.MoveTabRelative(-1),
            },
            {
              key = 'n',
              mods = 'LEADER|SHIFT',
              action = action.MoveTabRelative(1),
            },
            {
              key = 'r',
              mods = 'LEADER',
              action = action.ReloadConfiguration,
            },
            {
              key = 'p',
              mods = 'LEADER|SHIFT',
              action = action.ActivateCommandPalette,
            },
            {
              key = 'v',
              mods = 'LEADER',
              action = action.ActivateCopyMode,
            },
            {
              key = 'Space',
              mods = 'LEADER',
              action = action.QuickSelect,
            },
          },
        }
      '';
  };
}
