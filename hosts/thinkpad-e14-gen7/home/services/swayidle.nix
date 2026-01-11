{
  pkgs,
  lib,
  config,
  ...
}:
let
  bctl = "${lib.getExe pkgs.brightnessctl}";
  niri = "${lib.getExe config.programs.niri.package}";
  swaylock = "${lib.getExe config.programs.swaylock.package}";
in
{
  services.swayidle = {
    enable = true;
    timeouts = [
      {
        timeout = 60;
        command = "${bctl} -s; ${bctl} set 0";
        resumeCommand = "${bctl} -r";
      }
      {
        timeout = 120;
        command = "${swaylock}";
      }
      {
        timeout = 180;
        command = "${niri} msg action power-off-monitors";
        resumeCommand = "${niri} msg action power-on-monitors";
      }
      {
        timeout = 1800;
        command = "${pkgs.systemd}/bin/systemctl suspend";
      }
    ];
    events.before-sleep = "${swaylock}";
  };
}
