{ lib, ... }:
let
  azikTable = import ./azik-table.nix lib;
in
{
  services.hazkey.enable = true;
  home.file."azik.tsv" = {
    text = azikTable;
    target = ".config/hazkey/table/azik.tsv";
  };
}
