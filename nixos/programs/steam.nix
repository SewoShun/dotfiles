{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    gamescopeSession = {
      enable = true;
    };
    protontricks = {
      enable = true;
    };
    dedicatedServer.openFirewall = true;
    remotePlay.openFirewall = true;
    extraCompatPackages = with pkgs; [
      proton-ge-bin
    ];
  };
}
