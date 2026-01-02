{
  pkgs,
  config,
  lib,
  ...
}:
let
  nvim-ime =
    let
      text-file = "/tmp/nvim-ime.txt";
    in
    pkgs.writeScript "nvim-ime" # bash
      ''
        ${ghostty} --title="nvim-ime" --command="nvim ${text-file} -c startinsert"
        if [[ -e "${text-file}" ]]; then
          wl-copy < ${text-file}
          rm -f ${text-file}
        fi
      '';

  ghostty = lib.getExe config.programs.ghostty.package;
in
{
  programs.niri = {
    enable = true;

    settings = {
      binds = with config.lib.niri.actions; {
        "Mod+Return".action = spawn ghostty "--command=${lib.getExe config.programs.tmux.package}";
        "Mod+b".action = spawn "floorp";
        "Mod+d".action = spawn "rofi" "-show" "drun";
        "Mod+Shift+p".action = spawn "rofi" "-show" "p" "-modi" "p:'rofi-power-menu'";
        "Mod+i".action = spawn "${nvim-ime}";

        XF86MonBrightnessUp.action = spawn "brightnessctl" "set" "+5%";
        XF86MonBrightnessDown.action = spawn "brightnessctl" "set" "5%-";
        XF86AudioRaiseVolume.action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%+";
        XF86AudioLowerVolume.action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "5%-";
        XF86AudioMute.action = spawn "wpctl" "set-mute" "@DEFAULT_AUDIO_SINK@" "toggle";

        "Mod+s".action.screenshot.show-pointer = true;
        "Mod+Shift+s".action.screenshot-window.write-to-disk = true;

        "Mod+Shift+q".action = close-window;
        "Mod+f".action = fullscreen-window;
        "Mod+Shift+f".action = toggle-window-floating;
        "Mod+m".action = maximize-column;
        "Mod+o".action = toggle-overview;
        "Mod+Minus".action = set-column-width "-5%";
        "Mod+Equal".action = set-column-width "+5%";

        "Mod+h".action = focus-column-or-monitor-left;
        "Mod+j".action = focus-window-or-workspace-down;
        "Mod+k".action = focus-window-or-workspace-up;
        "Mod+l".action = focus-column-or-monitor-right;

        "Mod+Shift+h".action = move-column-left-or-to-monitor-left;
        "Mod+Shift+j".action = move-window-down-or-to-workspace-down;
        "Mod+Shift+k".action = move-window-up-or-to-workspace-up;
        "Mod+Shift+l".action = move-column-right-or-to-monitor-right;

        "Mod+1".action = focus-workspace 1;
        "Mod+2".action = focus-workspace 2;
        "Mod+3".action = focus-workspace 3;
        "Mod+4".action = focus-workspace 4;
        "Mod+5".action = focus-workspace 5;
        "Mod+6".action = focus-workspace 6;
        "Mod+7".action = focus-workspace 7;
        "Mod+8".action = focus-workspace 8;
        "Mod+9".action = focus-workspace 9;

        "Mod+Shift+1".action = move-workspace-to-index 1;
        "Mod+Shift+2".action = move-workspace-to-index 2;
        "Mod+Shift+3".action = move-workspace-to-index 3;
        "Mod+Shift+4".action = move-workspace-to-index 4;
        "Mod+Shift+5".action = move-workspace-to-index 5;
        "Mod+Shift+6".action = move-workspace-to-index 6;
        "Mod+Shift+7".action = move-workspace-to-index 7;
        "Mod+Shift+8".action = move-workspace-to-index 8;
        "Mod+Shift+9".action = move-workspace-to-index 9;
      };

      input = {
        focus-follows-mouse.enable = true;
      };

      hotkey-overlay = {
        hide-not-bound = true;
        skip-at-startup = true;
      };

      clipboard.disable-primary = true;
      screenshot-path = "~/Pictures/Screenshots/screenshot-%Y-%m-%d-%H-%M-%S.png";

      spawn-at-startup = [
        { argv = [ "waybar" ]; }
        {
          argv = [
            "fcitx5"
            "-d"
          ];
        }
      ];

      layout.focus-ring.width = 1;

      window-rules = [
        {
          matches = [
            {
              title = "nvim-ime";
            }
          ];
          opacity = 0.9;
          open-floating = true;
          focus-ring.enable = false;
        }
      ];

      switch-events = with config.lib.niri.actions; {
        lid-close.action = spawn "systemctl" "suspend-then-hibernate";
      };

      xwayland-satellite = {
        enable = true;
        path = lib.getExe pkgs.xwayland-satellite;
      };
    };
  };
}
