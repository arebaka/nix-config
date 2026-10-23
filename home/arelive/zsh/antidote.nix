{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.programs.zsh.antidote = {
    enable = true;
    plugins = [
      "Aloxaf/fzf-tab"
      "MichaelAquilina/zsh-you-should-use"

    ];

  };
}
