{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    ipaexfont
    migu
    nerd-fonts.zed-mono
    nerd-fonts."m+"
  ];
}
