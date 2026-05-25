{ inputs, pkgs, ... }:
{
  imports = [
    inputs.yaskkserv2-nix.homeModules.yaskkserv2
  ];

  services.yaskkserv2 = {
    enable = true;
    jisyo = with pkgs; [
      skkDictionaries.l
      skkDictionaries.propernoun
      skkDictionaries.jinmei
      skkDictionaries.fullname
      skkDictionaries.geo
    ];
  };
}
