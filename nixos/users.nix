{ config, pkgs, ... }:
{
  users = {
    defaultUserShell = pkgs.fish;
    users.sewo = {
      hashedPasswordFile = config.age.secrets.password.path;
      isNormalUser = true;
      extraGroups = [
        "audio"
        "networkmanager"
        "seat"
        "wheel"
      ];
    };
  };
}
