{
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
