{
  programs.zellij = {
    enable = true;
    settings = {
      default_mode = "locked";
      mouse_mode = false;

      keybinds = {
        normal = {
          _children = [
            {
              bind = {
                _args = [ "p" ];
                _children = [ { GoToPreviousTab = { }; } ];
              };
            }
            {
              bind = {
                _args = [ "n" ];
                _children = [ { GoToNextTab = { }; } ];
              };
            }
            {
              bind = {
                _args = [ "h" ];
                _children = [ { HalfPageScrollUp = { }; } ];
              };
            }
            {
              bind = {
                _args = [ "j" ];
                _children = [ { ScrollDown = { }; } ];
              };
            }
            {
              bind = {
                _args = [ "k" ];
                _children = [ { ScrollUp = { }; } ];
              };
            }
            {
              bind = {
                _args = [ "l" ];
                _children = [ { HalfPageScrollDown = { }; } ];
              };
            }
            {
              bind = {
                _args = [ "t" ];
                _children = [
                  { NewTab = { }; }
                  { SwitchToMode._args = [ "locked" ]; }
                ];
              };
            }
          ];
        };

        shared_except = {
          _args = [ "locked" ];
          _children = [
            {
              bind = {
                _args = [ "Esc" ];
                _children = [ { SwitchToMode._args = [ "locked" ]; } ];
              };
            }
          ];
        };
      };
    };
  };
}
