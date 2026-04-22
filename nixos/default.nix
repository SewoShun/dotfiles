{
  inputs,
  config,
  pkgs,
  ...
}:
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

  environment.systemPackages = with pkgs; [ sbctl ];

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.lib.getExe pkgs.cage} -s -mlast -- ${pkgs.lib.getExe config.programs.regreet.package}";
      };
    };
  };

  programs.regreet = {
    enable = true;
  };

  system.stateVersion = "25.11";
}
