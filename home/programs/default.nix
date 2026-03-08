{
  imports = [
    ./alacritty.nix
    ./direnv.nix
    ./eza.nix
    ./firefox.nix
    ./fish.nix
    ./floorp.nix
    ./gh.nix
    ./ghostty.nix
    ./git.nix
    ./helix.nix
    ./jujutsu.nix
    ./nh.nix
    ./niri.nix
    ./noctalia-shell.nix
    ./nushell.nix
    ./rio.nix
    ./rofi.nix
    ./starship.nix
    ./tmux.nix
    ./waybar.nix
    ./wezterm.nix
    ./zellij.nix
    ./zk.nix
    ./zsh.nix
  ];

  programs = {
    bat.enable = true;
    bottom.enable = true;
    delta.enable = true;
    docker-cli.enable = true;
    emacs.enable = true;
    feh.enable = true;
    fd.enable = true;
    fzf.enable = true;
    lazydocker.enable = true;
    lazygit.enable = true;
    nix-index.enable = true;
    nix-index-database.comma.enable = true;
    ripgrep.enable = true;
    ripgrep-all.enable = true;
    skim.enable = true;
    uv.enable = true;
    yazi.enable = true;
    zoxide.enable = true;
  };
}
