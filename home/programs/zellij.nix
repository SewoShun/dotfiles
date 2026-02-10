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
              _args = [ "Alt h" ];
              _children = [ { GoToPreviousTab = { }; } ];
            };
          }
          {
            bind = {
              _args = [ "Alt l" ];
              _children = [
                { GoToNextTab = { }; }
              ];
            };
          }
          {
            bind = {
              _args = [ "Alt n" ];
              _children = [
                { NewTab = { }; }
              ];
            };
          }
          {
            bind = {
              _args = [ "Alt x" ];
              _children = [
                { CloseTab = { }; }
              ];
            };
          }
        ]
        ++ (map (i: {
          bind = {
            _args = [ "Alt ${toString i}" ];
            _children = [
              { GoToTab = i; }
            ];
          };
        }) (lib.lists.range 1 9));
      };
    };
  };
}
