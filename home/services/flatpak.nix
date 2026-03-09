{ inputs, ... }:
{
  imports = [
    inputs.nix-flatpak.homeManagerModules.nix-flatpak
  ];

  services.flatpak = {
    enable = true;
    packages = [
      "com.brave.Browser"
      "com.github.powertab.powertabeditor"
    ];
  };
}
