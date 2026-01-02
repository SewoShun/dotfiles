{
  imports = [
    ./flatpak.nix
  ];

  services = {
    dunst.enable = true;
    ollama.enable = true;
    pueue.enable = true;
    swww.enable = true;
  };
}
