{ config, ... }:
{
  nix.extraOptions = ''
    !include ${config.age.secrets.access-tokens-user.path}
  '';
}
