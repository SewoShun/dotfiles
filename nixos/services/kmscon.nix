{ pkgs, ... }:
{
  services.kmscon = {
    enable = true;
    fonts = [
      {
        name = "M+1Code Nerd Font";
        package = pkgs.nerd-fonts."m+";
      }
    ];
  };
}
