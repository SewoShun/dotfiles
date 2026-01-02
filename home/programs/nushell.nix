{ pkgs, ... }:
{
  programs.nushell = {
    enable = false;
    plugins = with pkgs.nushellPlugins; [
      skim
      query
      gstat
      formats
      highlight
    ];
  };
}
