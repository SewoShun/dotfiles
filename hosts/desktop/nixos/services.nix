{
  services = {
    xserver = {
      enable = true;
      videoDrivers = [ "nvidia" ];
      xkb.layout = "us";
      windowManager = {
        leftwm.enable = false;
        i3.enable = true;
      };
    };
  };
}
