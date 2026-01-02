let
  thinkpad_root = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMEpbLEhEsqBOELFwoLc6O1N1x+By9jSh4UZc09PhZnR root@nixos";
  thinkpad_sewo = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMsoc31PvEv7K9PhOjUpVcsNaUXuIRbT4NgLtoFUJA+Z ";

  desktop_root = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIN1R4/WBYFXo+oAuIZc6dfh6yDqgRlogqbhyLCJb7Lrp root@nixos";
  desktop_sewo = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA1nymLw9EkH4IPxMadGdYoOmmWpjeRqiX89/153rnf8 ";

  keys = [
    thinkpad_root
    thinkpad_sewo
    desktop_root
    desktop_sewo
  ];
in
{
  "access-tokens.age".publicKeys = keys;
  "cachix-auth-token.age".publicKeys = keys;
  "password.age".publicKeys = keys;
}
