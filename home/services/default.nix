{
  imports = [
    ./flatpak.nix
    ./hazkey.nix
  ];

  services = {
    dunst.enable = true;
    ollama.enable = true;
    pueue.enable = true;
    swww.enable = true;
  };
}
