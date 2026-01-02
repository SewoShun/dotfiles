{ pkgs, ... }:
{
  programs.rio = {
    enable = true;
    settings = {
      editor.program = "${pkgs.helix}/bin/hx";
      fonts = {
        family = "ZedMono Nerd Font";
        extras = [
          {
            family = "M+1Code Nerd Font";
          }
        ];
      };
      navigation = {
        mode = "TopTab";
      };
      window = {
        decorations = "Buttonless";
      };
    };
  };
}
