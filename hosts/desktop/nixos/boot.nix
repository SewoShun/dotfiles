{ pkgs, ... }:
{
  boot = {
    initrd.availableKernelModules = [
      "nvidia"
      "nvidia_modeset"
      "nvidia_uvm"
      "nvidia_drm"
    ];

    loader.systemd-boot = {
      enable = true;
    };
    kernelPackages = pkgs.linuxKernel.packages.linux_xanmod_latest;
  };
}
