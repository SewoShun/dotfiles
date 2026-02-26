{ inputs, ... }:
{
  imports = [
    inputs.catppuccin.homeModules.catppuccin
  ];

  catppuccin = {
    enable = true;
    flavor = "mocha";
    cursors.enable = true;
    btop.enable = false;
  };
}
