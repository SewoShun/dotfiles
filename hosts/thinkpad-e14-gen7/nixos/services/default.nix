{
  imports = [
    ./logind.nix
    ./tlp.nix
  ];

  services = {
    upower.enable = true;
  };
}
