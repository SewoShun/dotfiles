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
  };
}
