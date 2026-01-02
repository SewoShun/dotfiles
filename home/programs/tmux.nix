{
  programs.tmux = {
    enable = true;
    clock24 = true;
    keyMode = "vi";
    terminal = "tmux-256color";
    escapeTime = 0;
    extraConfig = ''
      set -ag terminal-overrides ",alacritty:RGB"
    '';
  };
}
