{ inputs, ... }:
{
  imports = [
    inputs.xremap.nixosModules.default
  ];

  services.xremap = {
    enable = true;
    config.modmap = [
      {
        name = "Replace CapsLock to LeftControll";
        remap = {
          "CapsLock" = "Ctrl_L";
        };
      }
    ];
  };
}
