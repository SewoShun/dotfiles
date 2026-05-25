{
  imports = [
    ./flatpak.nix
    ./yaskkserv2.nix
  ];

  services = {
    dunst.enable = true;
    ollama.enable = true;
    pueue.enable = true;
    swww.enable = true;
  };
}
