{
  inputs,
  lib,
  ...
}:
{

  boot = {
    lanzaboote = {
      enable = true;
      pkiBundle = "/var/lib/sbctl";
    };
    loader.systemd-boot = {
      enable = lib.mkForce false;
    };
    kernelParams = [
      "resume_offset=16377208"
      "mem_sleep_default=deep"
    ];
    resumeDevice = "/dev/disk/by-uuid/769e63fb-d3c5-4819-a5a1-10a2bd0a9cb6";
  };
}
