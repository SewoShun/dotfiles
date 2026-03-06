{ inputs, ... }:
{
  imports = [
    ./hardware-configuration.nix

    ./services

    ./boot.nix

    inputs.nixos-hardware.nixosModules.lenovo-thinkpad-e14-amd
    inputs.lanzaboote.nixosModules.lanzaboote
  ];

  swapDevices = [
    {
      device = "/swapfile";
      size = 32 * 1024;
    }
  ];
}
