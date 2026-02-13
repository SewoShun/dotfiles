{ lib, ... }:
{
  programs.zellij = {
    enable = true;
    settings = {
      mouse_mode = false;
      pane_frames = false;
      show_startup_tips = false;
      default_mode = "locked";
      keybinds = {
        normal._children = [
          {
            bind = {
              _args = [ "p" ];
              _children = [ { GoToPreviousTab = { }; } ];
            };
          }
          {
            bind = {
              _args = [ "n" ];
              _children = [
                { GoToNextTab = { }; }
              ];
            };
          }
          {
            bind = {
              _args = [ "N" ];
              _children = [
                { NewTab = { }; }
              ];
            };
          }
          {
            bind = {
              _args = [ "x" ];
              _children = [
                { CloseTab = { }; }
              ];
            };
          }
        ]
        ++ (map (i: {
          bind = {
            _args = [
              (toString i)
            ];
            _children = [
              { GoToTab = i; }
            ];
          };
        }) (lib.lists.range 1 9));
      };
    };
  };
}
