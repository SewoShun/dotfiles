{ pkgs, ... }:
{
  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
    extensions = with pkgs; [
      gh-s
    ];
  };
}
