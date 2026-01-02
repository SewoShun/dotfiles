{ inputs, self, ... }:
{
  nixpkgs = {
    config = {
      allowUnfree = true;
      nvidia.acceptLicense = true;
    };

    overlays = [
      inputs.niri.overlays.niri
      inputs.starship-jj.overlays.default
      inputs.nixvim-config.overlays.default
      self.overlays.default
    ];
  };
}
