{ config, lib, ... }:
{
  programs.zsh = {
    enable = true;
    autocd = true;
    autosuggestion = {
      enable = true;
    };

    dotDir = "${config.xdg.configHome}/zsh";
    enableCompletion = true;
    envExtra = lib.strings.concatLines [
      "PATH=$PATH:~/.cargo/bin/"
    ];
    initContent = ''
      autoload -Uz edit-command-line
      zle -N edit-command-line
      bindkey "^x^e" edit-command-line

      nix run nixpkgs#fastfetch
    '';
    syntaxHighlighting = {
      enable = true;
    };
  };
}
