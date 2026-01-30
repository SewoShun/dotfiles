{
  imports = [
    ./angrr.nix
    ./displayManager.nix
    ./kmscon.nix
    ./pipewire.nix
    ./tailscale.nix
    ./udev.nix
    ./xremap.nix
    ./xserver.nix
  ];

  services = {
    flatpak.enable = true;
    openssh.enable = true;
    pulseaudio.enable = false;
    resolved.enable = true;
  };
}
