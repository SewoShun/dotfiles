{ pkgs, host, ... }:
{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      nixfu = "nix flake update --flake ~/ghq/github.com/SewoShun/dotfiles";
      nixrsl = "sudo nixos-rebuild switch --flake ~/ghq/github.com/SewoShun/dotfiles#${host}";
      nixrbl = "sudo nixos-rebuild boot --flake ~/ghq/github.com/SewoShun/dotfiles#${host}";
      nixrsr = "sudo nixos-rebuild switch --flake github:SewoShun/dotfiles#${host}";
      nixrbr = "sudo nixos-rebuild boot --flake github:SewoShun/dotfiles#${host}";
    };
  };

  xdg.configFile."fish/completions/nix.fish" = {
    source = "${pkgs.nix}/share/fish/vendor_completions.d/nix.fish";
  };
}
