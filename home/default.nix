{
  inputs,
  ...
}:
{
  imports = [
    ./age.nix
    ./catppuccin.nix
    ./home.nix
    ./i18n.nix
    ./nix.nix
    ./programs
    ./services

    inputs.nix-index-database.homeModules.default
  ];

}
