{ inputs, self, ... }:
let
  inherit (inputs) nixpkgs;

  system = "x86_64-linux";
  username = "sewo";
  host = "desktop";

  nixos = nixpkgs.lib.nixosSystem {
    inherit system;

    specialArgs = { inherit inputs self host; };

    modules = [
      ./nixos
      ../../nixos

      home
    ];
  };

  home = {
    home-manager = {
      extraSpecialArgs = { inherit inputs self host; };
      useGlobalPkgs = true;
      useUserPackages = true;
      users.${username} = {
        imports = [
          ./home
          ../../home
        ];
      };
    };
  };
in
{
  flake.nixosConfigurations.${host} = nixos;
}
