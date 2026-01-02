{ config, ... }:
{
  networking = {
    firewall = {
      enable = true;
      checkReversePath = "loose";
      trustedInterfaces = [ "tailscale0" "docker0" ];
      allowedUDPPorts = [
        config.services.tailscale.port
        1149
      ];
    };
    hostName = "nixos";
    iproute2.enable = true;
    networkmanager.enable = true;
  };
}
