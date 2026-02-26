{ inputs, ... }:
{
  imports = [
    ./programs
    ./services

    ./age.nix
    ./boot.nix
    ./catppuccin.nix
    ./fonts.nix
    ./hardware.nix
    ./i18n.nix
    ./networking.nix
    ./nix.nix
    ./nixpkgs.nix
    ./security.nix
    ./systemd.nix
    ./time.nix
    ./users.nix
    ./virtualisation.nix
    ./xdg.nix

    inputs.home-manager.nixosModules.home-manager
  ];

  system.stateVersion = "25.11";
}
