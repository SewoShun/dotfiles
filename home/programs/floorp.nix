{ pkgs, ... }:
{
  programs.floorp = {
    enable = false;
    languagePacks = [ "ja" ];
    profiles.default = {
      extensions = {
        force = true;
      };
    };

    package = pkgs.floorp-bin;
  };
}
