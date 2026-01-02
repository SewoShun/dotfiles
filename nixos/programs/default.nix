{ pkgs, ... }:
{
  imports = [
    ./gamemode.nix
    ./steam.nix
  ];

  programs = {
    fish.enable = true;
    niri.enable = true;
    nix-ld.enable = true;
    zsh.enable = true;
  };
}
