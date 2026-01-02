{ inputs, ... }:
{
  imports = [
    ./boot.nix
    ./hardware.nix
    ./hardware-configuration.nix
    ./services.nix

    inputs.nixos-hardware.nixosModules.common-cpu-intel-cpu-only
    inputs.nixos-hardware.nixosModules.common-gpu-nvidia-nonprime
    inputs.nixos-hardware.nixosModules.common-hidpi
    inputs.nixos-hardware.nixosModules.common-pc-ssd
  ];

  networking.interfaces.enp6s0.wakeOnLan.enable = true;

  swapDevices = [
    {
      device = "/swapfile";
      size = 32 * 1024;
    }
  ];

  system.stateVersion = "25.11";
}
