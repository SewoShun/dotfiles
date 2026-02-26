{ inputs, lib, ... }:
let
  azikTable = import ./azik-table.nix lib;
in
{
  imports = [
    inputs.nix-hazkey.homeModules.hazkey
  ];

  services.hazkey.enable = true;
  home.file."azik.tsv" = {
    text = azikTable;
    target = ".config/hazkey/table/azik.tsv";
  };
}
