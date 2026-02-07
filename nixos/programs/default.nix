{ pkgs, ... }:
{
  imports = [
    ./gamemode.nix
    ./steam.nix
  ];

  programs = {
    niri.enable = true;
    nix-ld.enable = true;
    zsh.enable = true;
    fish.enable = true;
  };
}
