{ config, ... }:
{
  hardware.nvidia = {
    open = false;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
    modesetting.enable = true;
    forceFullCompositionPipeline = true;
  };
}
