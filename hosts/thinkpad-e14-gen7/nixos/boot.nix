{
  inputs,
  lib,
  ...
}:
{

  boot = {
    loader.limine = {
      secureBoot.enable = true;
    };
    kernelParams = [
      "resume_offset=16377208"
      "mem_sleep_default=deep"
    ];
    resumeDevice = "/dev/disk/by-uuid/769e63fb-d3c5-4819-a5a1-10a2bd0a9cb6";
  };
}
