{ inputs, ... }:
{
  imports = [
    inputs.ragenix.nixosModules.default
  ];

  age.secrets = {
    access-tokens.file = ../secrets/access-tokens.age;
    cachix-auth-token.file = ../secrets/cachix-auth-token.age;
    password.file = ../secrets/password.age;
  };
}
