{ pkgs, ... }:
{
  home = {
    stateVersion = "25.11";

    packages = with pkgs; [
      bingrep
      bitwarden-cli
      bitwarden-desktop
      brightnessctl
      cachix
      claude-code
      comma
      discord
      dust
      flatpak
      fzf
      ghq
      google-chrome
      gping
      grex
      hexyl
      jless
      jql
      just
      kiro-fhs
      krusader
      lazyjj
      manix
      nb
      neovim
      nodejs
      obsidian
      ollama
      pnpm
      primus
      procs
      rip2
      rofi-power-menu
      slack
      spacedrive
      tokei
      tor-browser
      vial
      wgnord
      wl-clipboard-rs

      (prismlauncher.override {
        additionalLibs = with pkgs; [
          atk
          cairo
          cups.lib
          dbus.lib
          expat
          glib
          libdrm
          libgbm
          libxcb
          libxcomposite
          libxdamage
          libxfixes
          libxkbcommon
          nspr
          nss
          pango
        ];
      })
    ];
  };
}
