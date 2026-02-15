{ pkgs, lib, ... }:
{
  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot = {
        configurationLimit = 16;
      };
      timeout = 0;
    };
    kernelParams = [
      "zswap.enabled=1"
      "zswap.shrinker_enabled=1"
    ];
    kernelPackages = lib.mkDefault pkgs.linuxKernel.packages.linux_zen;
  };
}
