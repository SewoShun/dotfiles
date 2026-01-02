{ pkgs, ... }:
{
  programs.floorp = {
    enable = true;
    languagePacks = [ "ja" ];
    profiles.default = {
      extensions = {
        force = true;
      };
    };

    package = pkgs.floorp-bin;
  };
}
