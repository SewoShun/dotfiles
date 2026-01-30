{ pkgs, host, ... }:
{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      nixrsl = "nh os switch ~/ghq/github.com/SewoShun/dotfiles -H ${host}";
      nixrbl = "nh os boot ~/ghq/github.com/SewoShun/dotfiles -H ${host}";
      nixrsr = "nh os switch github:SewoShun/dotfiles -H ${host}";
      nixrbr = "nh os boot github:SewoShun/dotfiles -H ${host}";

      osl = {
        command = "nh";
        expansion = "os switch ~/ghq/github.com/SewoShun/dotfiles -H ${host}";
      };
      obl = {
        command = "nh";
        expansion = "os boot ~/ghq/github.com/SewoShun/dotfiles -H ${host}";
      };
      osr = {
        command = "nh";
        expansion = "os switch github:SewoShun/dotfiles -H ${host}";
      };
      obr = {
        command = "nh";
        expansion = "os boot github:SewoShun/dotfiles -H ${host}";
      };
    };
  };

  xdg.configFile."fish/completions/nix.fish" = {
    source = "${pkgs.nix}/share/fish/vendor_completions.d/nix.fish";
  };
}
