{
  services.displayManager = {
    enable = true;
    lemurs.enable = false;
    sddm = {
      enable = false;
      wayland.enable = true;
    };
  };
}
