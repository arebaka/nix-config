{ config, lib, pkgs, inputs, ... }:

{
  home-manager.users.arelive.programs.zsh.autosuggestion = {
    enable = true;
    highlight = "fg=blue,underline";

  };
}
