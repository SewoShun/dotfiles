{ pkgs, lib, ... }:
{
  systemd = {
    services = {
      wgnord =
        let
          wgnord = lib.getExe pkgs.wgnord;
        in
        {
          description = "wgnord VPN connection";
          after = [ "network-online.target" ];
          wants = [ "network-online.target" ];
          wantedBy = [ "multi-user.target" ];

          serviceConfig = {
            Type = "oneshot";
            User = "root";
            RemainAfterExit = true;
            ExecStart = "${wgnord} connect Japan";
            ExecStop = "${wgnord} disconnect";
            Restart = "on-failure";
            RestartSec = "30s";
            StartLimitBurst = 3;
            StartLimitIntervalSec = "300s";
          };
        };
    };
  };
}
