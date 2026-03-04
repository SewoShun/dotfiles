{ inputs, ... }:
{
  flake.overlays.default =
    final: prev:
    let
      system = prev.stdenv.hostPlatform.system;
    in
    {
      stable = inputs.nixpkgs-stable.legacyPackages.${system};
      master = inputs.nixpkgs-master.legacyPackages.${system};
      nix-index = inputs.nix-index.packages.${system}.default;
    };
}
