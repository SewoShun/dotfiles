{
  services.displayManager = {
    enable = true;
    lemurs.enable = true;
    sddm = {
      enable = false;
      wayland.enable = true;
    };
  };
}
