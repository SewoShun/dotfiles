{ config, ... }:
{
  age.secrets = {
    access-tokens-user = {
      file = ../secrets/access-tokens.age;
      path = "${config.home.homeDirectory}/.secrets/access-tokens.conf";
    };
  };
}
