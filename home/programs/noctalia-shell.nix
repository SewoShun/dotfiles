{ inputs, ... }:
{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;
    settings = {
      bar = {
        position = "left";
      };
      wallpaper = {
        overviewEnabled = false;
      };
      colorSchemes.predefinedScheme = "Catppuccin";
    };
  };
}
