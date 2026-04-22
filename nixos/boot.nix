{ pkgs, lib, ... }:
{
  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot = {
        enable = false;
        configurationLimit = 16;
      };
      limine = {
        enable = true;
        maxGenerations = 8;
      };
      # timeout = 0;
    };
    kernelParams = [
      "zswap.enabled=1"
      "zswap.shrinker_enabled=1"
    ];
    kernelPackages = lib.mkDefault pkgs.linuxKernel.packages.linux_zen;
  };
}
