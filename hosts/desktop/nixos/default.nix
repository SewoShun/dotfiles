{ inputs, ... }:
{
  imports = [
    ./boot.nix
    ./disko.nix
    ./hardware.nix
    ./hardware-configuration.nix
    ./services.nix

    inputs.nixos-hardware.nixosModules.common-cpu-intel-cpu-only
    inputs.nixos-hardware.nixosModules.common-gpu-nvidia-nonprime
    inputs.nixos-hardware.nixosModules.common-hidpi
    inputs.nixos-hardware.nixosModules.common-pc-ssd
    inputs.disko.nixosModules.disko
  ];

  networking.interfaces.enp6s0.wakeOnLan.enable = true;

  system.stateVersion = "25.11";
}
