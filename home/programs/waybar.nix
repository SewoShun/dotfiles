{
  programs.waybar = {
    enable = true;
    style = ''
      * {
        all: unset;
        min-height: 0;
      }

      window {
        background: @base;
        color: @text;
      }

      button:hover {
        background: @surface0;
        border: none;
      }

      #workspaces button {
        color: @text;
        padding: 1px 5px;
      }

      #workspaces button.active {
        color: @green;
        font-weight: bold;
      }

      #clock {
        padding: 1px 5px;
      }

      #battery {
        padding: 1px 5px;
      }

      #wireplumber {
        padding: 1px 5px;
      }
    '';
    settings = {
      mainBar = {
        layer = "top";

        modules-left = [
          "niri/workspaces"
        ];
        modules-center = [
          "niri/window"
        ];
        modules-right = [
          "wireplumber"
          "battery"
          "clock"
        ];

        wireplumber = {
          format = "{icon} {volume}%";
          format-muted = "󰝟 {volume}%";
          format-icons = [
            "󰕿"
            "󰖀"
            "󰕾"
          ];
        };

        battery = {
          format = "{icon}  {capacity}% {power}W";
          format-icons = [
            ""
            ""
            ""
            ""
            ""
          ];
        };

        clock = {
          format = "{:%F %R}";
        };
      };
    };
  };
}
