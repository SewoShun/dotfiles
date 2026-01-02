{
  services.logind = {
    settings.Login = {
      HandleLidSwitch = "suspend-then-hibernate";
      HandlePowerKey = "sleep";
      HandlePowerKeyLongPress = "hibernate";
    };
  };
}
