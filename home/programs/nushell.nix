{
  config,
  host,
  lib,
  ...
}:
{
  programs.nushell = {
    enable = true;
    environmentVariables = {
      EDITOR = lib.getExe config.programs.helix.package;
    };
    settings = {
      show_banner = false;
    };
    shellAliases = {
      nixrsl = "nh os switch ~/ghq/github.com/SewoShun/dotfiles -H ${host}";
      nixrbl = "nh os boot ~/ghq/github.com/SewoShun/dotfiles -H ${host}";
      nixrsr = "nh os switch github:SewoShun/dotfiles -H ${host}";
      nixrbr = "nh os boot github:SewoShun/dotfiles -H ${host}";
    };
  };
}
