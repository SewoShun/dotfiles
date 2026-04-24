{
  inputs,
  lib,
  ...
}:
{

  boot = {
    loader.limine = {
      secureBoot.enable = true;
      extraEntries = ''
        /Windows
          protocol: efi
          path: uuid(4e81a813-74af-453c-a204-8141bcaade72):/EFI/Microsoft/Boot/bootmgfw.efi
      '';
    };
    kernelParams = [
      "resume_offset=16377208"
      "mem_sleep_default=deep"
    ];
    resumeDevice = "/dev/disk/by-uuid/769e63fb-d3c5-4819-a5a1-10a2bd0a9cb6";
  };
}
