{ pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    font = "M+1 Nerd Font 16";
    plugins = with pkgs; [
      bitwarden-menu
    ];
  };
}
