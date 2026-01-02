{ pkgs, ... }:
{
  programs.swaylock = {
    enable = true;
    settings = {
      daemonize = true;
      indicator-idle-visible = true;
      screenshots = true;
      effect-blur = "7x5";
      clock = true;
    };
    package = pkgs.swaylock-effects;
  };
}
