{
  inputs,
  ...
}:
{
  imports = [
    ./age.nix
    ./catppuccin.nix
    ./home.nix
    ./i18n.nix
    ./nix.nix
    ./programs
    ./services

    inputs.catppuccin.homeModules.catppuccin
    inputs.niri.homeModules.niri
    inputs.nix-flatpak.homeManagerModules.nix-flatpak
    inputs.nix-hazkey.homeModules.hazkey
    inputs.ragenix.homeManagerModules.default
  ];
}
