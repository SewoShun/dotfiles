{ pkgs, ... }:
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      addons = with pkgs; [
        fcitx5-mozc-ut
        fcitx5-skk
      ];
      waylandFrontend = true;
      settings = {
        globalOptions = {
          Hotkey = {
            "TriggerKeys/0" = "Super+space";
            AltTriggerKeys = "";
          };
        };
        inputMethod = {
          GroupOrder."0" = "Default";
          "Groups/0" = {
            Name = "Default";
            "Default Layout" = "us";
            DefaultIM = "skk";
          };
          "Groups/0/Items/0".Name = "keyboard-us";
          "Groups/0/Items/1".Name = "skk";
        };
        addons.skk.globalSection = {
          Rule = "azik";
          InitialInputMode = "Latin";
          EggLikeNewLine = true;
        };
      };
    };
  };
  xdg.dataFile."fcitx5/skk/dictionary_list".text = ''
    type=server,host=localhost,port=1178,encoding=EUC-JP
  '';
}
